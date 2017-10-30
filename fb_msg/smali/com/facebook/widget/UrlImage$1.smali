.class Lcom/facebook/widget/UrlImage$1;
.super Lcom/facebook/orca/app/UserInteractionListener;
.source "UrlImage.java"


# instance fields
.field final synthetic a:Lcom/facebook/widget/UrlImage;


# direct methods
.method constructor <init>(Lcom/facebook/widget/UrlImage;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/widget/UrlImage$1;->a:Lcom/facebook/widget/UrlImage;

    invoke-direct {p0}, Lcom/facebook/orca/app/UserInteractionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/widget/UrlImage$1;->a:Lcom/facebook/widget/UrlImage;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/UrlImage;->a(Z)V

    .line 180
    return-void
.end method
