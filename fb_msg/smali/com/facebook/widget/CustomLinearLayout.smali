.class public Lcom/facebook/widget/CustomLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CustomLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/facebook/widget/CustomLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getInjector()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/facebook/widget/CustomLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method protected setContentView(I)V
    .locals 2
    .parameter

    .prologue
    .line 38
    const-string v0, "CustomLinearLayout.setContentView"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/facebook/widget/CustomLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 40
    invoke-virtual {v1, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 42
    return-void
.end method
