.class public Landroid_src/mms/dom/smil/SmilParElementImpl;
.super Landroid_src/mms/dom/smil/SmilElementImpl;
.source "SmilParElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILParElement;


# instance fields
.field b:Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# direct methods
.method constructor <init>(Landroid_src/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid_src/mms/dom/smil/SmilElementImpl;-><init>(Landroid_src/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid_src/mms/dom/smil/SmilParElementImpl$1;

    invoke-direct {v0, p0, p0}, Landroid_src/mms/dom/smil/SmilParElementImpl$1;-><init>(Landroid_src/mms/dom/smil/SmilParElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Landroid_src/mms/dom/smil/SmilParElementImpl;->b:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .line 100
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Landroid_src/mms/dom/smil/SmilParElementImpl;->b:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->a(F)V

    .line 192
    return-void
.end method
