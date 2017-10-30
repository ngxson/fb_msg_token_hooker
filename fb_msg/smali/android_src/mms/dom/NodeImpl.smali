.class public abstract Landroid_src/mms/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/events/EventTarget;


# instance fields
.field a:Landroid_src/mms/dom/DocumentImpl;

.field private b:Lorg/w3c/dom/Node;

.field private final c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/w3c/dom/events/EventTarget;


# direct methods
.method protected constructor <init>(Landroid_src/mms/dom/DocumentImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    .line 40
    new-instance v0, Landroid_src/mms/dom/events/EventTargetImpl;

    invoke-direct {v0, p0}, Landroid_src/mms/dom/events/EventTargetImpl;-><init>(Lorg/w3c/dom/events/EventTarget;)V

    iput-object v0, p0, Landroid_src/mms/dom/NodeImpl;->d:Lorg/w3c/dom/events/EventTarget;

    .line 47
    iput-object p1, p0, Landroid_src/mms/dom/NodeImpl;->a:Landroid_src/mms/dom/DocumentImpl;

    .line 48
    return-void
.end method

.method private a(Lorg/w3c/dom/Node;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Landroid_src/mms/dom/NodeImpl;->b:Lorg/w3c/dom/Node;

    .line 207
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter

    .prologue
    .line 55
    move-object v0, p1

    check-cast v0, Landroid_src/mms/dom/NodeImpl;

    invoke-direct {v0, p0}, Landroid_src/mms/dom/NodeImpl;->a(Lorg/w3c/dom/Node;)V

    .line 56
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    return-object p1
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 3
    .parameter

    .prologue
    .line 230
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid_src/mms/dom/NodeListImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid_src/mms/dom/NodeListImpl;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    :try_start_0
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->b:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->b:Lorg/w3c/dom/Node;

    check-cast v0, Landroid_src/mms/dom/NodeImpl;

    iget-object v0, v0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    .line 110
    invoke-virtual {v0, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->a:Landroid_src/mms/dom/DocumentImpl;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->b:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->b:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->b:Lorg/w3c/dom/Node;

    check-cast v0, Landroid_src/mms/dom/NodeImpl;

    iget-object v0, v0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    .line 141
    invoke-virtual {v0, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 142
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 250
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 3
    .parameter

    .prologue
    .line 258
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 3
    .parameter

    .prologue
    .line 242
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 173
    check-cast p1, Landroid_src/mms/dom/NodeImpl;

    invoke-direct {p1, v1}, Landroid_src/mms/dom/NodeImpl;->a(Lorg/w3c/dom/Node;)V

    .line 177
    return-object v1

    .line 175
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    const-string v2, "Child does not exist"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    iget-object v0, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    iget-object v1, p0, Landroid_src/mms/dom/NodeImpl;->c:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 189
    check-cast p1, Landroid_src/mms/dom/NodeImpl;

    invoke-direct {p1, p0}, Landroid_src/mms/dom/NodeImpl;->a(Lorg/w3c/dom/Node;)V

    move-object v0, p2

    .line 190
    check-cast v0, Landroid_src/mms/dom/NodeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid_src/mms/dom/NodeImpl;->a(Lorg/w3c/dom/Node;)V

    .line 194
    return-object p2

    .line 192
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    const-string v2, "Old child does not exist"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 238
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
