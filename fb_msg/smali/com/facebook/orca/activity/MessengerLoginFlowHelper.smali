.class public Lcom/facebook/orca/activity/MessengerLoginFlowHelper;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "MessengerLoginFlowHelper.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/nux/OrcaNuxManager;

.field private final c:Lcom/facebook/orca/config/OrcaConfig;

.field private final d:Lcom/facebook/orca/cache/DataCache;

.field private final e:Lcom/facebook/orca/common/util/VersionStringComparator;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    sput-object v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/nux/OrcaNuxManager;Lcom/facebook/orca/config/OrcaConfig;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/common/util/VersionStringComparator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->b:Lcom/facebook/orca/nux/OrcaNuxManager;

    .line 44
    iput-object p2, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->c:Lcom/facebook/orca/config/OrcaConfig;

    .line 45
    iput-object p3, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->d:Lcom/facebook/orca/cache/DataCache;

    .line 46
    iput-object p4, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->e:Lcom/facebook/orca/common/util/VersionStringComparator;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const-string v0, "orca:loginparam:ReturnUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->f:Ljava/lang/String;

    .line 51
    const-string v0, "orca:loginparam:ReturnIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->g:Landroid/content/Intent;

    .line 52
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    iget-object v2, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->d:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/DataCache;->f()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v2

    .line 56
    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    sget-object v3, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/facebook/orca/appconfig/AppConfig;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->c:Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v3}, Lcom/facebook/orca/config/OrcaConfig;->a()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v2}, Lcom/facebook/orca/appconfig/AppConfig;->a()Ljava/lang/String;

    move-result-object v4

    .line 63
    iget-object v5, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->e:Lcom/facebook/orca/common/util/VersionStringComparator;

    invoke-virtual {v5, v3, v4}, Lcom/facebook/orca/common/util/VersionStringComparator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    move v0, v1

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    iget-object v3, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->c:Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v3}, Lcom/facebook/orca/config/OrcaConfig;->b()I

    move-result v3

    .line 68
    invoke-virtual {v2}, Lcom/facebook/orca/appconfig/AppConfig;->d()I

    move-result v2

    .line 69
    if-ge v3, v2, :cond_0

    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->b:Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/OrcaNuxManager;->f()Z

    move-result v0

    return v0
.end method

.method public m(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Going to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->g:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Going to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->g:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x10000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    sget-object v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a:Ljava/lang/Class;

    const-string v1, "Going to NUX."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/nux/NUXActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 89
    :cond_2
    sget-object v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a:Ljava/lang/Class;

    const-string v1, "Going to threadlist."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method
