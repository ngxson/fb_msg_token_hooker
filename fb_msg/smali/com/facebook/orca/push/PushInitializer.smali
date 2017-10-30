.class public Lcom/facebook/orca/push/PushInitializer;
.super Ljava/lang/Object;
.source "PushInitializer.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/AlarmManager;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushManager;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/orca/push/PushInitializer;

    sput-object v0, Lcom/facebook/orca/push/PushInitializer;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/orca/push/PushInitializer;->b:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/facebook/orca/push/PushInitializer;->c:Landroid/app/AlarmManager;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/push/PushInitializer;->d:Landroid/os/Handler;

    .line 46
    iput-object p3, p0, Lcom/facebook/orca/push/PushInitializer;->e:Ljava/util/Set;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/PushInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/push/PushInitializer;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/PushInitializer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/facebook/orca/push/PushInitializer;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/push/PushInitializer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/push/PushInitializer;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/push/PushInitializer;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushManager;

    .line 61
    invoke-interface {v0}, Lcom/facebook/orca/push/PushManager;->a()V

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/PushInitializer;->e()V

    .line 65
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 68
    iget-boolean v0, p0, Lcom/facebook/orca/push/PushInitializer;->f:Z

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/PushInitializer;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    iget-object v1, p0, Lcom/facebook/orca/push/PushInitializer;->b:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    .line 77
    iget-object v3, p0, Lcom/facebook/orca/push/PushInitializer;->c:Landroid/app/AlarmManager;

    invoke-virtual {v3, v5, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 78
    iput-boolean v5, p0, Lcom/facebook/orca/push/PushInitializer;->f:Z

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/push/PushInitializer;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushManager;

    .line 87
    invoke-interface {v0}, Lcom/facebook/orca/push/PushManager;->c()V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/push/PushInitializer;->d()V

    .line 57
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/orca/push/PushInitializer;->a:Ljava/lang/Class;

    const-string v1, "PushInitializer.init"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/facebook/orca/push/PushInitializer;->d()V

    .line 53
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/orca/push/PushInitializer;->f()V

    .line 83
    return-void
.end method
