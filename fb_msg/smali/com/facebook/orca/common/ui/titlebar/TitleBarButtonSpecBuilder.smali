.class public Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
.super Ljava/lang/Object;
.source "TitleBarButtonSpecBuilder.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a:I

    return v0
.end method

.method public a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 0
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a:I

    .line 27
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->b:Landroid/graphics/drawable/Drawable;

    .line 36
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->f:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->g:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->e:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->h:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;)V

    return-object v0
.end method
