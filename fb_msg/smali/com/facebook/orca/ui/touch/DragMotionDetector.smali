.class public Lcom/facebook/orca/ui/touch/DragMotionDetector;
.super Ljava/lang/Object;
.source "DragMotionDetector.java"


# instance fields
.field a:Z

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:[F

.field private j:[F

.field private k:I

.field private l:F

.field private m:F

.field private n:Lcom/facebook/orca/ui/touch/Draggable;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

.field private u:I


# direct methods
.method public constructor <init>(Lcom/facebook/orca/ui/touch/Draggable;Ljava/util/List;FF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/ui/touch/Draggable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    const/high16 v0, 0x4170

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->b:F

    .line 25
    iput v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->c:F

    .line 29
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->d:F

    .line 61
    iput-boolean v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a:Z

    .line 76
    sget-object v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->MONITORING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    iput-object v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    .line 77
    iput v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->u:I

    .line 122
    iput-object p1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->n:Lcom/facebook/orca/ui/touch/Draggable;

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->n:Lcom/facebook/orca/ui/touch/Draggable;

    invoke-static {v0}, Lcom/facebook/debug/Assert;->a(Ljava/lang/Object;)V

    .line 126
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->i:[F

    .line 127
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->j:[F

    .line 129
    iput-object p2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->o:Ljava/util/List;

    .line 133
    iput p3, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->b:F

    .line 134
    iput p4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->c:F

    .line 135
    return-void
.end method

.method private a(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 279
    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->p:F

    iget v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->q:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 280
    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->r:F

    iget v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->s:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 281
    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->p:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->q:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->r:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->s:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->p:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->q:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->r:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->s:F

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 304
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :cond_3
    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->r:F

    iget v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->s:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 293
    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->p:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->q:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->r:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->s:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    goto :goto_0

    .line 298
    :cond_4
    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->p:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->q:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->r:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->s:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    goto :goto_0
.end method

.method private b(F)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 269
    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->d:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 270
    iget v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->d:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->l:F

    return v0
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput p1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->d:F

    .line 361
    return-void
.end method

.method public a(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a:Z

    .line 373
    iput p1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->p:F

    .line 374
    iput p3, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->q:F

    .line 375
    iput p2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->r:F

    .line 376
    iput p4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->s:F

    .line 377
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    sget-object v3, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->INTERCEPTING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    if-ne v2, v3, :cond_9

    :goto_1
    return v0

    .line 153
    :pswitch_0
    iput v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->e:F

    .line 154
    iput v3, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->f:F

    .line 155
    iget v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->e:F

    iput v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->g:F

    .line 156
    iget v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->f:F

    iput v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->h:F

    .line 157
    sget-object v2, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->MONITORING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    iput-object v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    .line 160
    iput v9, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->l:F

    .line 161
    iput v9, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->m:F

    .line 162
    iget-object v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->i:[F

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([FF)V

    .line 163
    iget-object v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->j:[F

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([FF)V

    .line 166
    iget-boolean v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->e:F

    iget v3, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->f:F

    invoke-direct {p0, v2, v3}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    sget-object v2, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->DEFERRING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    iput-object v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    goto :goto_0

    .line 173
    :pswitch_1
    sget-object v4, Lcom/facebook/orca/ui/touch/DragMotionDetector$1;->a:[I

    iget-object v5, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    invoke-virtual {v5}, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 247
    :cond_1
    :goto_2
    :pswitch_2
    iput v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->g:F

    .line 248
    iput v3, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->h:F

    goto :goto_0

    .line 182
    :pswitch_3
    iget v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->e:F

    sub-float v4, v2, v4

    .line 183
    iget v5, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->f:F

    sub-float v5, v3, v5

    .line 184
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 185
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 188
    sget-object v8, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->INTERCEPTING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    iput-object v8, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    .line 189
    iget v8, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->b:F

    cmpl-float v8, v7, v8

    if-lez v8, :cond_3

    invoke-direct {p0, v6}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->b(F)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 191
    cmpl-float v4, v5, v9

    if-lez v4, :cond_2

    .line 192
    const/16 v4, 0xa

    iput v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->u:I

    .line 215
    :goto_3
    iget-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->o:Ljava/util/List;

    iget v5, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->u:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 218
    sget-object v4, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->INTERCEPTING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    iput-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    .line 219
    iget-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->n:Lcom/facebook/orca/ui/touch/Draggable;

    iget v5, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->e:F

    iget v6, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->f:F

    invoke-interface {v4, v5, v6}, Lcom/facebook/orca/ui/touch/Draggable;->a(FF)V

    goto :goto_2

    .line 195
    :cond_2
    const/16 v4, -0xa

    iput v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->u:I

    goto :goto_3

    .line 199
    :cond_3
    iget v5, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->c:F

    cmpl-float v5, v6, v5

    if-lez v5, :cond_5

    invoke-direct {p0, v7}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->b(F)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 201
    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    .line 202
    const/4 v4, -0x1

    iput v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->u:I

    goto :goto_3

    .line 205
    :cond_4
    iput v0, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->u:I

    goto :goto_3

    .line 210
    :cond_5
    sget-object v4, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->MONITORING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    iput-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    .line 211
    iput v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->u:I

    goto :goto_3

    .line 221
    :cond_6
    iget-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    sget-object v5, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->INTERCEPTING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    if-ne v4, v5, :cond_1

    .line 224
    sget-object v4, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->DEFERRING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    iput-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    goto :goto_2

    .line 230
    :pswitch_4
    iget-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->n:Lcom/facebook/orca/ui/touch/Draggable;

    invoke-interface {v4, v2, v3}, Lcom/facebook/orca/ui/touch/Draggable;->b(FF)V

    .line 232
    iget v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->g:F

    sub-float v4, v2, v4

    .line 233
    iget v5, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->h:F

    sub-float v5, v3, v5

    .line 235
    iget v6, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->l:F

    iget-object v7, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->i:[F

    iget v8, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->k:I

    aget v7, v7, v8

    sub-float v7, v4, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->l:F

    .line 236
    iget-object v6, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->i:[F

    iget v7, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->k:I

    aput v4, v6, v7

    .line 237
    iget v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->k:I

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->i:[F

    array-length v6, v6

    rem-int/2addr v4, v6

    iput v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->k:I

    .line 239
    iget v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->m:F

    iget-object v6, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->j:[F

    iget v7, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->k:I

    aget v6, v6, v7

    sub-float v6, v5, v6

    add-float/2addr v4, v6

    iput v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->m:F

    .line 240
    iget-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->j:[F

    iget v6, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->k:I

    aput v5, v4, v6

    .line 241
    iget v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->k:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->j:[F

    array-length v5, v5

    rem-int/2addr v4, v5

    iput v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->k:I

    goto/16 :goto_2

    .line 253
    :pswitch_5
    iget-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    sget-object v5, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->DEFERRING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    if-eq v4, v5, :cond_8

    iget v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->u:I

    if-eqz v4, :cond_8

    .line 254
    iget-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->n:Lcom/facebook/orca/ui/touch/Draggable;

    invoke-interface {v4, v2, v3}, Lcom/facebook/orca/ui/touch/Draggable;->c(FF)V

    .line 261
    :cond_7
    :goto_4
    iput v1, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->u:I

    goto/16 :goto_0

    .line 256
    :cond_8
    iget-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    sget-object v5, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->DEFERRING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    if-eq v4, v5, :cond_7

    .line 257
    iget-object v4, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->n:Lcom/facebook/orca/ui/touch/Draggable;

    invoke-interface {v4, v2, v3}, Lcom/facebook/orca/ui/touch/Draggable;->d(FF)V

    .line 258
    sget-object v2, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->MONITORING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    iput-object v2, p0, Lcom/facebook/orca/ui/touch/DragMotionDetector;->t:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    goto :goto_4

    :cond_9
    move v0, v1

    .line 265
    goto/16 :goto_1

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 173
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
