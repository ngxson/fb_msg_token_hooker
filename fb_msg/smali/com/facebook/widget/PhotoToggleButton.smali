.class public Lcom/facebook/widget/PhotoToggleButton;
.super Lcom/facebook/widget/PhotoButton;
.source "PhotoToggleButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/facebook/widget/PhotoToggleButton$OnCheckedChangeListener;

.field private d:Lcom/nineoldandroids/view/ViewPropertyAnimator;

.field private e:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

.field private f:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/facebook/widget/ViewTransform;


# direct methods
.method static synthetic a(Lcom/facebook/widget/PhotoToggleButton;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/widget/PhotoToggleButton;->f()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f40

    .line 94
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->d:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/facebook/widget/PhotoToggleButton;->e:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 95
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->d:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->a(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 96
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->d:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->a(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 97
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->d:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->b(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 98
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 101
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->d:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/facebook/widget/PhotoToggleButton;->e:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 102
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->d:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->a(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 103
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->d:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->a(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 104
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->d:Lcom/nineoldandroids/view/ViewPropertyAnimator;

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->b(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 105
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->j:Lcom/facebook/widget/ViewTransform;

    invoke-virtual {v0}, Lcom/facebook/widget/ViewTransform;->a()F

    move-result v0

    const/high16 v1, 0x3f40

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 121
    iget-boolean v0, p0, Lcom/facebook/widget/PhotoToggleButton;->g:Z

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/facebook/widget/PhotoToggleButton;->e()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->j:Lcom/facebook/widget/ViewTransform;

    invoke-virtual {v0}, Lcom/facebook/widget/ViewTransform;->a()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 125
    iget-boolean v0, p0, Lcom/facebook/widget/PhotoToggleButton;->i:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->c()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/PhotoToggleButton;->i:Z

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->c:Lcom/facebook/widget/PhotoToggleButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->c:Lcom/facebook/widget/PhotoToggleButton$OnCheckedChangeListener;

    invoke-virtual {p0}, Lcom/facebook/widget/PhotoToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/facebook/widget/PhotoToggleButton$OnCheckedChangeListener;->a(Lcom/facebook/widget/PhotoToggleButton;Z)V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/facebook/widget/PhotoToggleButton;->d()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/PhotoToggleButton;->g:Z

    .line 76
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/widget/PhotoToggleButton;->j:Lcom/facebook/widget/ViewTransform;

    invoke-virtual {v0}, Lcom/facebook/widget/ViewTransform;->a()F

    move-result v0

    const/high16 v1, 0x3f40

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/facebook/widget/PhotoToggleButton;->e()V

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/PhotoToggleButton;->g:Z

    .line 85
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/facebook/widget/PhotoToggleButton;->toggle()V

    .line 90
    invoke-direct {p0}, Lcom/facebook/widget/PhotoToggleButton;->g()V

    .line 91
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/facebook/widget/PhotoToggleButton;->h:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget v0, p0, Lcom/facebook/widget/PhotoToggleButton;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PhotoToggleButton;->setImageResource(I)V

    .line 139
    :goto_0
    iput-boolean p1, p0, Lcom/facebook/widget/PhotoToggleButton;->h:Z

    .line 140
    iput-boolean p1, p0, Lcom/facebook/widget/PhotoToggleButton;->i:Z

    .line 141
    return-void

    .line 137
    :cond_0
    iget v0, p0, Lcom/facebook/widget/PhotoToggleButton;->a:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PhotoToggleButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/facebook/widget/PhotoToggleButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/widget/PhotoToggleButton;->c:Lcom/facebook/widget/PhotoToggleButton$OnCheckedChangeListener;

    .line 155
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/facebook/widget/PhotoToggleButton;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PhotoToggleButton;->setChecked(Z)V

    .line 151
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
