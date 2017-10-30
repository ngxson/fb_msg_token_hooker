.class public Landroid_src/mms/dom/smil/SmilElementImpl;
.super Landroid_src/mms/dom/ElementImpl;
.source "SmilElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILElement;


# direct methods
.method constructor <init>(Landroid_src/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid_src/mms/dom/ElementImpl;-><init>(Landroid_src/mms/dom/DocumentImpl;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
