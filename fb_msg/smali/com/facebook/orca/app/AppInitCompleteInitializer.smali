.class public Lcom/facebook/orca/app/AppInitCompleteInitializer;
.super Ljava/lang/Object;
.source "AppInitCompleteInitializer.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


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
.field private final b:Lcom/facebook/orca/app/AppInitLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/facebook/orca/app/AppInitCompleteInitializer;

    sput-object v0, Lcom/facebook/orca/app/AppInitCompleteInitializer;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/app/AppInitLock;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/app/AppInitCompleteInitializer;->b:Lcom/facebook/orca/app/AppInitLock;

    .line 24
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/app/AppInitCompleteInitializer;->b:Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {v0}, Lcom/facebook/orca/app/AppInitLock;->a()V

    .line 37
    return-void
.end method
