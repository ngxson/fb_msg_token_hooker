.class public Lcom/facebook/widget/menu/CustomMenuItem;
.super Ljava/lang/Object;
.source "CustomMenuItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/menu/CustomMenuItem;->a:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/facebook/widget/menu/CustomMenuItem;->b:I

    .line 18
    iput v1, p0, Lcom/facebook/widget/menu/CustomMenuItem;->c:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/menu/CustomMenuItem;->d:Z

    return-void
.end method
