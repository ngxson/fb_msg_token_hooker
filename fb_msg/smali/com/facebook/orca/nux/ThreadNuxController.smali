.class public Lcom/facebook/orca/nux/ThreadNuxController;
.super Ljava/lang/Object;
.source "ThreadNuxController.java"


# instance fields
.field private final a:Lcom/facebook/orca/nux/OrcaNuxManager;

.field private b:Landroid/content/Context;

.field private c:Lcom/facebook/orca/nux/ThreadTitleNuxView;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/nux/OrcaNuxManager;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/orca/nux/ThreadNuxController;->a:Lcom/facebook/orca/nux/OrcaNuxManager;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/nux/ThreadNuxController;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/orca/nux/ThreadNuxController;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadNuxController;->a:Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/OrcaNuxManager;->j()V

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadNuxController;->c:Lcom/facebook/orca/nux/ThreadTitleNuxView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/ThreadTitleNuxView;->f()V

    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/nux/ThreadNuxController;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/nux/SmsNuxDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    iget-object v1, p0, Lcom/facebook/orca/nux/ThreadNuxController;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/nux/ThreadNuxController;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/orca/nux/ThreadNuxController;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadNuxController;->a:Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/OrcaNuxManager;->j()V

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadNuxController;->c:Lcom/facebook/orca/nux/ThreadTitleNuxView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/ThreadTitleNuxView;->f()V

    .line 59
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadNuxController;->c:Lcom/facebook/orca/nux/ThreadTitleNuxView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/ThreadTitleNuxView;->d()V

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadNuxController;->c:Lcom/facebook/orca/nux/ThreadTitleNuxView;

    new-instance v1, Lcom/facebook/orca/nux/ThreadNuxController$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/nux/ThreadNuxController$1;-><init>(Lcom/facebook/orca/nux/ThreadNuxController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/nux/ThreadTitleNuxView;->setOnMoreClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadNuxController;->c:Lcom/facebook/orca/nux/ThreadTitleNuxView;

    new-instance v1, Lcom/facebook/orca/nux/ThreadNuxController$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/nux/ThreadNuxController$2;-><init>(Lcom/facebook/orca/nux/ThreadNuxController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/nux/ThreadTitleNuxView;->setOnOkayClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/orca/nux/ThreadTitleNuxView;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/facebook/orca/nux/ThreadNuxController;->b:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lcom/facebook/orca/nux/ThreadNuxController;->c:Lcom/facebook/orca/nux/ThreadTitleNuxView;

    .line 27
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadNuxController;->a:Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/nux/OrcaNuxManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/facebook/orca/nux/ThreadNuxController;->a()V

    .line 30
    :cond_0
    return-void
.end method
