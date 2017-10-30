.class public Lcom/facebook/orca/nux/NuxSmsIntroView;
.super Lcom/facebook/orca/nux/NuxPopover;
.source "NuxSmsIntroView.java"


# instance fields
.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/orca/nux/NuxPopover;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/nux/NuxPopover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/nux/NuxPopover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/facebook/R$layout;->orca_nux_sms_intro:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->setContentView(I)V

    .line 38
    sget v0, Lcom/facebook/R$id;->nux_sms_intro_try_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/nux/NuxSmsIntroView;->d:Landroid/widget/Button;

    .line 39
    sget v0, Lcom/facebook/R$id;->nux_sms_intro_skip_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/nux/NuxSmsIntroView;->e:Landroid/widget/Button;

    .line 40
    sget v0, Lcom/facebook/R$id;->nux_sms_intro_blurb:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/nux/NuxSmsIntroView;->f:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->c()V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/nux/NuxSmsIntroView;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 66
    return-void
.end method

.method public setBlurb(I)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->c()V

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/nux/NuxSmsIntroView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    return-void
.end method

.method public setBlurb(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->c()V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/nux/NuxSmsIntroView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setOnSkipClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->c()V

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/nux/NuxSmsIntroView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public setOnTryClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->c()V

    .line 45
    iget-object v0, p0, Lcom/facebook/orca/nux/NuxSmsIntroView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
