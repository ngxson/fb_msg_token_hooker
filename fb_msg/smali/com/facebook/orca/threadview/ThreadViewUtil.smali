.class public Lcom/facebook/orca/threadview/ThreadViewUtil;
.super Ljava/lang/Object;
.source "ThreadViewUtil.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/orca/threadview/ThreadViewUtil;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/orca/activity/FbFragmentActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/orca/threadview/ThreadViewUtil;->a:Z

    if-eqz v0, :cond_0

    .line 23
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListActivity;

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    instance-of v0, p1, Lcom/facebook/orca/threadview/ThreadViewActivity;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->i()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    instance-of v0, p1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/facebook/orca/threadview/ThreadViewUtil;->a:Z

    if-eqz v0, :cond_1

    .line 38
    check-cast p1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-virtual {p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    instance-of v0, p1, Lcom/facebook/orca/threadview/ThreadViewActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/facebook/orca/threadview/ThreadViewUtil;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
