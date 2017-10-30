.class Lcom/facebook/orca/sms/MmsContentResolverHandler;
.super Ljava/lang/Object;
.source "MmsContentResolverHandler.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Landroid/net/Uri;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/facebook/orca/sms/MmsSmsUserUtils;

.field private final e:Lcom/facebook/orca/attachments/MediaAttachmentUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/facebook/orca/sms/MmsContentResolverHandler;

    sput-object v0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a:Ljava/lang/Class;

    .line 67
    const-string v0, "content://mms/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->b:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/orca/sms/MmsSmsUserUtils;Lcom/facebook/orca/attachments/MediaAttachmentUtil;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    .line 97
    iput-object p3, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->e:Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    .line 98
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Landroid_src/mms/pdu/PduBody;
    .locals 11
    .parameter

    .prologue
    .line 700
    new-instance v4, Landroid_src/mms/pdu/PduBody;

    invoke-direct {v4}, Landroid_src/mms/pdu/PduBody;-><init>()V

    .line 701
    const/4 v2, 0x1

    .line 706
    invoke-static {}, Landroid_src/mms/MmsConfig;->i()I

    move-result v0

    invoke-static {}, Landroid_src/mms/MmsConfig;->h()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 707
    invoke-static {}, Landroid_src/mms/MmsConfig;->a()I

    move-result v0

    add-int/lit16 v1, v0, -0x1388

    .line 708
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 709
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 710
    div-int v7, v2, v1

    .line 711
    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v8

    sget-object v9, Lcom/facebook/orca/media/MediaResource$Type;->PHOTO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v8, v9}, Lcom/facebook/orca/media/MediaResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 712
    new-instance v8, Landroid_src/mms/pdu/PduPart;

    invoke-direct {v8}, Landroid_src/mms/pdu/PduPart;-><init>()V

    .line 713
    new-instance v9, Lcom/facebook/orca/attachments/MediaAttachment;

    iget-object v10, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-direct {v9, v10, v0}, Lcom/facebook/orca/attachments/MediaAttachment;-><init>(Landroid/content/Context;Lcom/facebook/orca/media/MediaResource;)V

    .line 714
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->e:Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    invoke-virtual {v0, v9, v5, v5, v7}, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a(Lcom/facebook/orca/attachments/MediaAttachment;III)[B

    move-result-object v0

    .line 720
    array-length v7, v0

    .line 721
    invoke-virtual {v8, v0}, Landroid_src/mms/pdu/PduPart;->a([B)V

    .line 722
    const-string v0, "image/jpeg"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid_src/mms/pdu/PduPart;->e([B)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMG_"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ".jpg"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid_src/mms/pdu/PduPart;->c([B)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMG_"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid_src/mms/pdu/PduPart;->b([B)V

    .line 726
    invoke-virtual {v4, v8}, Landroid_src/mms/pdu/PduBody;->a(Landroid_src/mms/pdu/PduPart;)Z

    .line 727
    sub-int/2addr v2, v7

    .line 733
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .line 734
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    .line 735
    goto/16 :goto_0

    .line 728
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v7

    sget-object v8, Lcom/facebook/orca/media/MediaResource$Type;->AUDIO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v7, v8}, Lcom/facebook/orca/media/MediaResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 730
    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v0

    sget-object v7, Lcom/facebook/orca/media/MediaResource$Type;->VIDEO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v0, v7}, Lcom/facebook/orca/media/MediaResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 738
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 739
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Ljava/lang/String;I)Landroid_src/mms/pdu/PduPart;

    move-result-object v0

    .line 740
    invoke-virtual {v4, v0}, Landroid_src/mms/pdu/PduBody;->a(Landroid_src/mms/pdu/PduPart;)Z

    .line 744
    :cond_3
    invoke-static {v4}, Landroid_src/mms/model/SmilHelper;->a(Landroid_src/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 745
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 746
    invoke-static {v0, v1}, Landroid_src/mms/dom/smil/parser/SmilXmlSerializer;->a(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 747
    new-instance v0, Landroid_src/mms/pdu/PduPart;

    invoke-direct {v0}, Landroid_src/mms/pdu/PduPart;-><init>()V

    .line 748
    const-string v2, "smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid_src/mms/pdu/PduPart;->b([B)V

    .line 749
    const-string v2, "smil.xml"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid_src/mms/pdu/PduPart;->c([B)V

    .line 750
    const-string v2, "application/smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid_src/mms/pdu/PduPart;->e([B)V

    .line 751
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduPart;->a([B)V

    .line 752
    const/4 v1, 0x0

    invoke-virtual {v4, v1, v0}, Landroid_src/mms/pdu/PduBody;->a(ILandroid_src/mms/pdu/PduPart;)V

    .line 754
    return-object v4
.end method

.method private a(Ljava/lang/String;I)Landroid_src/mms/pdu/PduPart;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 764
    new-instance v0, Landroid_src/mms/pdu/PduPart;

    invoke-direct {v0}, Landroid_src/mms/pdu/PduPart;-><init>()V

    .line 765
    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduPart;->a(I)V

    .line 766
    const-string v1, "text/plain"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduPart;->e([B)V

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduPart;->c([B)V

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduPart;->b([B)V

    .line 769
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduPart;->a([B)V

    .line 770
    return-object v0
.end method

.method private a(Ljava/util/Set;)Landroid_src/mms/pdu/SendReq;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid_src/mms/pdu/SendReq;"
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 676
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 677
    invoke-static {v0}, Landroid_src/mms/ui/MessageUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 679
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 683
    new-instance v1, Landroid_src/mms/pdu/SendReq;

    invoke-direct {v1}, Landroid_src/mms/pdu/SendReq;-><init>()V

    .line 684
    invoke-static {v0}, Landroid_src/mms/pdu/EncodedStringValue;->a([Ljava/lang/String;)[Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_2

    .line 686
    invoke-virtual {v1, v0}, Landroid_src/mms/pdu/SendReq;->a([Landroid_src/mms/pdu/EncodedStringValue;)V

    .line 688
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid_src/mms/pdu/SendReq;->a(J)V

    .line 689
    return-object v1
.end method

.method private a(Landroid/database/Cursor;Lcom/google/common/collect/ImmutableMultimap;)Lcom/facebook/orca/threads/Message;
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;",
            ">;)",
            "Lcom/facebook/orca/threads/Message;"
        }
    .end annotation

    .prologue
    .line 403
    const-string v1, "thread_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    const-string v3, "sub"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-static {v1}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-static {v2}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 408
    const-string v1, "date"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 409
    const-wide/32 v8, 0xf4240

    mul-long/2addr v8, v6

    .line 411
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMultimap;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    .line 412
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v10

    .line 413
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v11

    .line 414
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;

    .line 415
    iget-object v13, v1, Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;->b:Lcom/facebook/orca/media/MediaResource;

    if-eqz v13, :cond_1

    .line 416
    iget-object v1, v1, Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;->b:Lcom/facebook/orca/media/MediaResource;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_1
    iget-object v13, v1, Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;->a:Ljava/lang/String;

    invoke-static {v13}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 418
    iget-object v1, v1, Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;->a:Ljava/lang/String;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_2
    const-string v1, "\n\n"

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 423
    const-string v1, "msg_box"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 424
    const/4 v1, 0x0

    .line 425
    const/4 v13, 0x0

    .line 426
    const/4 v14, 0x2

    if-ne v12, v14, :cond_4

    .line 427
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {v1}, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    .line 432
    :cond_3
    :goto_1
    new-instance v2, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v2, v5}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/facebook/orca/threads/MessageBuilder;->c(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    const-string v2, "mms"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->f(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/threads/Message$ChannelSource;->MMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessageBuilder;->v()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    return-object v1

    .line 428
    :cond_4
    const/4 v14, 0x1

    if-ne v12, v14, :cond_3

    .line 429
    invoke-direct {p0, v2}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    goto :goto_1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 299
    invoke-static {p0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "SELECT MAX(date)*1000 AS normalized_date, thread_id AS thread_id, MAX(_id) AS _id FROM pdu WHERE %1$s GROUP BY thread_id"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "m_type IN (128, 132) AND msg_box IN (1, 2)"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/StringLocaleUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SELECT MAX(date)*1000 AS normalized_date, thread_id AS thread_id, MAX(_id) AS _id FROM pdu WHERE %1$s GROUP BY thread_id"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_type IN (128, 132) AND msg_box IN (1, 2) AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/StringLocaleUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/part/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 594
    const-string v1, ""

    .line 596
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 598
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 599
    invoke-static {v0}, Lcom/google/common/io/CharStreams;->a(Ljava/lang/Readable;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 601
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 606
    :goto_0
    return-object v0

    .line 601
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 603
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 604
    :goto_1
    sget-object v2, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a:Ljava/lang/Class;

    const-string v3, "Opening MMS Part input stream failed"

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 603
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 272
    if-nez p2, :cond_0

    .line 273
    const-string v0, ""

    .line 277
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN (SELECT mms._id FROM ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LEFT JOIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") sms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ON sms.thread_id=mms.thread_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(sms.normalized_date<mms.normalized_date OR sms.normalized_date IS NULL) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ORDER BY mms.normalized_date DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid_src/mms/pdu/SendReq;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x81

    .line 640
    const-wide/32 v0, 0x93a80

    invoke-virtual {p1, v0, v1}, Landroid_src/mms/pdu/SendReq;->b(J)V

    .line 641
    invoke-virtual {p1, v2}, Landroid_src/mms/pdu/SendReq;->c(I)V

    .line 642
    invoke-virtual {p1, v2}, Landroid_src/mms/pdu/SendReq;->d(I)V

    .line 643
    invoke-virtual {p1, v2}, Landroid_src/mms/pdu/SendReq;->e(I)V

    .line 644
    return-void
.end method

.method private b(Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v1, "mms.normalized_date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;->b()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v7, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v7}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid_src/provider/Telephony$Mms;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/sms/MmsSmsProjections;->e:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 149
    :try_start_0
    const-string v0, "thread_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 150
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 151
    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 152
    const-string v0, "read"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 153
    const-string v0, "sub"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 154
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 158
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 159
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 161
    new-instance v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    .line 169
    invoke-virtual {v7, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 161
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 172
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/util/List;)Lcom/google/common/collect/ImmutableMultimap;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-static {}, Lcom/google/common/collect/ImmutableMultimap;->j()Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v6

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mid IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/sms/MmsContentResolverHandler;->b:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 543
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 544
    const-string v0, "mid"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 545
    const-string v0, "ct"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 546
    const-string v0, "name"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    const-string v0, "fn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 548
    const-string v0, "_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 549
    const-string v0, "chset"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 550
    const-string v0, "_data"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 551
    const-string v0, "text"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {}, Lcom/facebook/orca/media/MediaResource;->a()Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v11

    .line 555
    const-string v12, "text/plain"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 557
    if-eqz v10, :cond_1

    .line 558
    invoke-direct {p0, v8, v9}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;->a(Ljava/lang/String;)Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;

    move-result-object v0

    .line 572
    :goto_1
    invoke-virtual {v11}, Lcom/facebook/orca/media/MediaResource$Builder;->a()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://mms/part/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v7

    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_2
    invoke-virtual {v7, v0}, Lcom/facebook/orca/media/MediaResource$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource$Builder;->e()Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    .line 579
    invoke-static {v0}, Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;->a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/sms/MmsContentResolverHandler$MmsPart;

    move-result-object v0

    .line 581
    :cond_2
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v6, v5, v0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 586
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 563
    :cond_3
    :try_start_1
    invoke-static {v7}, Landroid_src/mms/ContentType;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 564
    sget-object v0, Lcom/facebook/orca/media/MediaResource$Type;->PHOTO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v11, v0}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Lcom/facebook/orca/media/MediaResource$Type;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-object v0, v2

    goto :goto_1

    .line 565
    :cond_4
    invoke-static {v7}, Landroid_src/mms/ContentType;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 566
    sget-object v0, Lcom/facebook/orca/media/MediaResource$Type;->AUDIO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v11, v0}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Lcom/facebook/orca/media/MediaResource$Type;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-object v0, v2

    goto :goto_1

    .line 567
    :cond_5
    invoke-static {v7}, Landroid_src/mms/ContentType;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 568
    sget-object v0, Lcom/facebook/orca/media/MediaResource$Type;->VIDEO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v11, v0}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Lcom/facebook/orca/media/MediaResource$Type;)Lcom/facebook/orca/media/MediaResource$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move-object v0, v2

    goto :goto_1

    :cond_7
    move-object v0, v3

    .line 574
    goto :goto_2

    .line 586
    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 588
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 610
    const-string v3, "type=137"

    .line 611
    sget-object v0, Landroid_src/provider/Telephony$Mms;->a:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "addr"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 613
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 621
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 624
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/threads/ParticipantInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 627
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 629
    :goto_0
    return-object v2

    .line 627
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method a(Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x3e8

    .line 349
    new-instance v6, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v6}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 352
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 354
    const-string v2, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v0

    .line 362
    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    const/4 v2, 0x0

    const-string v3, "thread_id"

    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "m_type IN (128, 132) AND msg_box IN (1, 2)"

    invoke-static {v3}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a([Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v4

    .line 367
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid_src/provider/Telephony$Mms;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/sms/MmsSmsProjections;->d:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;->b()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "date DESC LIMIT "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->b()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 375
    :try_start_0
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 378
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-virtual {v6, v2}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 383
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 357
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 358
    const-string v2, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 385
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->b(Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->d(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 324
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 325
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    .line 326
    invoke-virtual {v0}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 329
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 330
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    .line 331
    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 332
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->a(Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 329
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 340
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->d(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/facebook/orca/threads/Message;Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 656
    invoke-direct {p0, p2}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Ljava/util/Set;)Landroid_src/mms/pdu/SendReq;

    move-result-object v0

    .line 657
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Lcom/facebook/orca/threads/Message;)Landroid_src/mms/pdu/PduBody;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/SendReq;->a(Landroid_src/mms/pdu/PduBody;)V

    .line 660
    invoke-direct {p0, v0}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Landroid_src/mms/pdu/SendReq;)V

    .line 661
    const-string v1, "personal"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/SendReq;->b([B)V

    .line 662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid_src/mms/pdu/SendReq;->a(J)V

    .line 663
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid_src/mms/pdu/PduPersister;->a(Landroid/content/Context;)Landroid_src/mms/pdu/PduPersister;

    move-result-object v1

    .line 664
    sget-object v2, Landroid_src/provider/Telephony$Mms$Outbox;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid_src/mms/pdu/PduPersister;->a(Landroid_src/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 455
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 457
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 459
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 470
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    .line 474
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v6

    .line 477
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->d(Ljava/util/List;)Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v7

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 481
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid_src/provider/Telephony$Mms;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/sms/MmsSmsProjections;->f:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 489
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    :try_start_1
    invoke-direct {p0, v1, v7}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Landroid/database/Cursor;Lcom/google/common/collect/ImmutableMultimap;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 492
    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid_src/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    :try_start_2
    sget-object v2, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a:Ljava/lang/Class;

    const-string v3, "Error making Mms message"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 498
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 500
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 778
    iget-object v3, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 781
    return-void
.end method
