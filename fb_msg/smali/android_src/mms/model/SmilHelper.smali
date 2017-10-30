.class public Landroid_src/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 141
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid_src/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Landroid_src/mms/model/SmilHelper;->b(Landroid_src/mms/pdu/PduBody;)Landroid_src/mms/pdu/PduPart;

    move-result-object v1

    .line 59
    const/4 v0, 0x0

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-static {v1}, Landroid_src/mms/model/SmilHelper;->a(Landroid_src/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 66
    :cond_0
    if-nez v0, :cond_1

    .line 68
    invoke-static {p0}, Landroid_src/mms/model/SmilHelper;->c(Landroid_src/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 71
    :cond_1
    return-object v0
.end method

.method private static a(Landroid_src/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 3
    .parameter

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Landroid_src/mms/pdu/PduPart;->a()[B

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 110
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 111
    new-instance v0, Landroid_src/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v0}, Landroid_src/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v0, v1}, Landroid_src/mms/dom/smil/parser/SmilXmlParser;->a(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid_src/mms/model/SmilHelper;->b(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid_src/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "fb-mms:Mms/smil"

    const-string v2, "Failed to parse SMIL document."

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    const-string v1, "fb-mms:Mms/smil"

    const-string v2, "Failed to parse SMIL document."

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 118
    :catch_2
    move-exception v0

    .line 119
    const-string v1, "fb-mms:Mms/smil"

    const-string v2, "Failed to parse SMIL document."

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 136
    invoke-static {p2}, Landroid_src/mms/model/SmilHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->a(Ljava/lang/String;)V

    .line 137
    return-object v0
.end method

.method public static a(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .parameter

    .prologue
    .line 125
    const-string v0, "par"

    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 127
    const/high16 v1, 0x4100

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->a(F)V

    .line 128
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->c()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 129
    return-object v0
.end method

.method private static b(Landroid_src/mms/pdu/PduBody;)Landroid_src/mms/pdu/PduPart;
    .locals 5
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid_src/mms/pdu/PduBody;->b()I

    move-result v2

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Landroid_src/mms/pdu/PduBody;->a(I)Landroid_src/mms/pdu/PduPart;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid_src/mms/pdu/PduPart;->g()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    :goto_1
    return-object v0

    .line 80
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter

    .prologue
    .line 93
    return-object p0
.end method

.method private static c(Landroid_src/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 13
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 153
    new-instance v6, Landroid_src/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v6}, Landroid_src/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 157
    const-string v0, "smil"

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .line 158
    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/2001/SMIL20/Language"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 162
    const-string v1, "head"

    invoke-interface {v6, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 163
    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 165
    const-string v2, "layout"

    invoke-interface {v6, v2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 166
    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 169
    const-string v1, "body"

    invoke-interface {v6, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 170
    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 171
    invoke-static {v6}, Landroid_src/mms/model/SmilHelper;->a(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v2

    .line 174
    invoke-virtual {p0}, Landroid_src/mms/pdu/PduBody;->b()I

    move-result v9

    .line 175
    if-nez v9, :cond_0

    move-object v0, v6

    .line 232
    :goto_0
    return-object v0

    :cond_0
    move v8, v3

    move v0, v3

    move v1, v3

    .line 181
    :goto_1
    if-ge v8, v9, :cond_9

    .line 183
    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 184
    :cond_1
    invoke-static {v6}, Landroid_src/mms/model/SmilHelper;->a(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v0

    move v1, v3

    move-object v2, v0

    move v0, v3

    .line 189
    :cond_2
    invoke-virtual {p0, v8}, Landroid_src/mms/pdu/PduBody;->a(I)Landroid_src/mms/pdu/PduPart;

    move-result-object v10

    .line 190
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v10}, Landroid_src/mms/pdu/PduPart;->g()[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 191
    invoke-static {v4}, Landroid_src/mms/ContentType;->h(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 194
    :try_start_0
    new-instance v7, Landroid_src/mms/drm/DrmWrapper;

    invoke-virtual {v10}, Landroid_src/mms/pdu/PduPart;->b()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10}, Landroid_src/mms/pdu/PduPart;->a()[B

    move-result-object v12

    invoke-direct {v7, v4, v11, v12}, Landroid_src/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 196
    invoke-virtual {v7}, Landroid_src/mms/drm/DrmWrapper;->b()Ljava/lang/String;
    :try_end_0
    .catch Landroid_src/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 204
    :cond_3
    :goto_2
    const-string v7, "text/plain"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "text/html"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 207
    :cond_4
    const-string v1, "text"

    invoke-virtual {v10}, Landroid_src/mms/pdu/PduPart;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v6, v4}, Landroid_src/mms/model/SmilHelper;->a(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v1

    .line 209
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v1, v5

    .line 181
    :goto_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_1

    .line 197
    :catch_0
    move-exception v7

    .line 198
    const-string v11, "fb-mms:Mms/smil"

    invoke-virtual {v7}, Landroid_src/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v7}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 199
    :catch_1
    move-exception v7

    .line 200
    const-string v11, "fb-mms:Mms/smil"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v7}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 211
    :cond_5
    invoke-static {v4}, Landroid_src/mms/ContentType;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 212
    const-string v0, "img"

    invoke-virtual {v10}, Landroid_src/mms/pdu/PduPart;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v6, v4}, Landroid_src/mms/model/SmilHelper;->a(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 214
    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v5

    .line 216
    goto :goto_3

    :cond_6
    invoke-static {v4}, Landroid_src/mms/ContentType;->g(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 217
    const-string v0, "video"

    invoke-virtual {v10}, Landroid_src/mms/pdu/PduPart;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v6, v4}, Landroid_src/mms/model/SmilHelper;->a(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 219
    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v5

    .line 221
    goto :goto_3

    :cond_7
    invoke-static {v4}, Landroid_src/mms/ContentType;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 222
    const-string v0, "audio"

    invoke-virtual {v10}, Landroid_src/mms/pdu/PduPart;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v6, v4}, Landroid_src/mms/model/SmilHelper;->a(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 224
    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v5

    .line 226
    goto :goto_3

    .line 228
    :cond_8
    const-string v4, "fb-mms:Mms/smil"

    const-string v7, "unsupport media type"

    invoke-static {v4, v7}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v0, v6

    .line 232
    goto/16 :goto_0
.end method
