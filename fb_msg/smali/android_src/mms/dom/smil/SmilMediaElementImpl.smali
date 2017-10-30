.class public Landroid_src/mms/dom/smil/SmilMediaElementImpl;
.super Landroid_src/mms/dom/smil/SmilElementImpl;
.source "SmilMediaElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILMediaElement;


# instance fields
.field b:Lorg/w3c/dom/smil/ElementTime;


# direct methods
.method constructor <init>(Landroid_src/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid_src/mms/dom/smil/SmilElementImpl;-><init>(Landroid_src/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid_src/mms/dom/smil/SmilMediaElementImpl$1;

    invoke-direct {v0, p0, p0}, Landroid_src/mms/dom/smil/SmilMediaElementImpl$1;-><init>(Landroid_src/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Landroid_src/mms/dom/smil/SmilMediaElementImpl;->b:Lorg/w3c/dom/smil/ElementTime;

    .line 128
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Landroid_src/mms/dom/smil/SmilMediaElementImpl;->b:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->a(F)V

    .line 317
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Landroid_src/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method
