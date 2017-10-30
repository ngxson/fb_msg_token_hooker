.class public Lcom/facebook/orca/creation/StartThreadTabIndicatorView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "StartThreadTabIndicatorView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 28
    sget v1, Lcom/facebook/R$layout;->orca_start_thread_tab_indicator:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;->FACEBOOK:Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->setColorScheme(Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V

    .line 30
    sget v0, Lcom/facebook/R$id;->tab_indicator_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->a:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/facebook/R$id;->tab_indicator_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->b:Landroid/widget/FrameLayout;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->gray_wash_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public setColorScheme(Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 40
    :pswitch_0
    sget v0, Lcom/facebook/R$drawable;->orca_tab_view_background:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->setBackgroundResource(I)V

    goto :goto_0

    .line 41
    :pswitch_1
    sget v0, Lcom/facebook/R$drawable;->orca_tab_view_sms_background:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->setBackgroundResource(I)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
