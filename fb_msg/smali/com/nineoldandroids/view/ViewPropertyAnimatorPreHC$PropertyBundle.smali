.class Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorPreHC.java"


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->a:I

    .line 148
    iput-object p2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->b:Ljava/util/ArrayList;

    .line 149
    return-void
.end method


# virtual methods
.method a(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 162
    iget v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->a:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 164
    :goto_0
    if-ge v2, v3, :cond_1

    .line 165
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;

    .line 166
    iget v0, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->a:I

    if-ne v0, p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    iget v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->a:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->a:I

    .line 169
    const/4 v0, 0x1

    .line 173
    :goto_1
    return v0

    .line 164
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 173
    goto :goto_1
.end method
