.class public Lcom/facebook/orca/app/FbAppUserDataCleaner;
.super Ljava/lang/Object;
.source "FbAppUserDataCleaner.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/IHaveUserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/IHaveUserData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/facebook/orca/app/FbAppUserDataCleaner;

    iput-object v0, p0, Lcom/facebook/orca/app/FbAppUserDataCleaner;->a:Ljava/lang/Class;

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/app/FbAppUserDataCleaner;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 24
    iput-object p2, p0, Lcom/facebook/orca/app/FbAppUserDataCleaner;->c:Ljava/util/Set;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppUserDataCleaner;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b()V

    .line 30
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppUserDataCleaner;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/IHaveUserData;

    .line 31
    invoke-interface {v0}, Lcom/facebook/orca/app/IHaveUserData;->a()V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppUserDataCleaner;->a:Ljava/lang/Class;

    const-string v1, "User data is cleared successfully."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 35
    return-void
.end method
