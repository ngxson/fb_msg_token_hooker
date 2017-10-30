.class public Lcom/facebook/orca/threads/MessagesCollectionMerger;
.super Ljava/lang/Object;
.source "MessagesCollectionMerger.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    sput-object v0, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Z)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    sget-object v1, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a:Ljava/lang/Class;

    const-string v2, "MERGE: %d new, %d old"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message Collections with different thread ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    :cond_1
    :goto_0
    return-object p1

    .line 78
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 p1, p2

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-direct/range {p0 .. p2}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->d(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 p1, p2

    .line 87
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 92
    new-instance v4, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;-><init>(Lcom/facebook/orca/threads/MessagesCollectionMerger$1;)V

    .line 93
    new-instance v5, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;-><init>(Lcom/facebook/orca/threads/MessagesCollectionMerger$1;)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 96
    invoke-virtual {v4, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    goto :goto_1

    .line 100
    :cond_5
    const/4 v2, 0x0

    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 102
    invoke-virtual {v5, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    .line 103
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    const/4 v1, 0x1

    .line 109
    :goto_2
    if-nez v1, :cond_7

    .line 110
    const-string v1, "MERGE: couldn\'t find sync point"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    if-nez p3, :cond_1

    .line 118
    :goto_3
    const/4 v3, 0x0

    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v6

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v7

    .line 123
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v8

    .line 124
    new-instance v9, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;-><init>(Lcom/facebook/orca/threads/MessagesCollectionMerger$1;)V

    .line 125
    :goto_4
    if-ge v3, v6, :cond_11

    if-ge v2, v7, :cond_11

    .line 129
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v10

    .line 130
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 132
    invoke-virtual {v9, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 115
    :cond_7
    const-string v1, "MERGE: found sync point (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 134
    :cond_8
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 136
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 137
    const-string v11, "MERGE: inserting matching element (%s)"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 139
    invoke-virtual {v8, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 143
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 141
    :cond_a
    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_5

    .line 146
    :cond_b
    invoke-virtual {v5, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 147
    invoke-virtual {v5, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->c(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    move-result-object v11

    .line 148
    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v12

    invoke-virtual {v11}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gtz v12, :cond_c

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->v()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v11}, Lcom/facebook/orca/threads/Message;->v()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 151
    :cond_c
    const-string v1, "MERGE: Inserting new element (%s) and discarding old"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v1, v12}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 153
    invoke-virtual {v9, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    .line 154
    invoke-virtual {v5, v11}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->d(Lcom/facebook/orca/threads/Message;)V

    .line 155
    add-int/lit8 v1, v3, 0x1

    :goto_6
    move v3, v1

    .line 179
    goto/16 :goto_4

    .line 159
    :cond_d
    const-string v11, "MERGE: Iterating old to find message matching (%s)"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v1

    if-nez v1, :cond_14

    if-ge v2, v7, :cond_14

    .line 161
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 164
    invoke-virtual {v4, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 165
    invoke-virtual {v5, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->d(Lcom/facebook/orca/threads/Message;)V

    .line 166
    const-string v11, "MERGE: Not inserting old element (%s)"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 167
    :cond_e
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 168
    invoke-virtual {v5, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->d(Lcom/facebook/orca/threads/Message;)V

    .line 169
    const-string v11, "MERGE: Not inserting old element (%s)"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 171
    :cond_f
    const-string v11, "MERGE: Inserting missing old element (%s)"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v8, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 173
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    goto :goto_8

    .line 180
    :cond_10
    const-string v1, "MERGE: Inserting new element (%s)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v1, v11}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 182
    invoke-virtual {v9, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 190
    :cond_11
    :goto_9
    if-ge v2, v7, :cond_13

    .line 191
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 192
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 193
    const-string v3, "MERGE: Not inserting old element (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 200
    goto :goto_9

    .line 195
    :cond_12
    const-string v3, "MERGE: inserting old element (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v8, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 197
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    goto :goto_a

    .line 202
    :cond_13
    new-instance v1, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    move-object/from16 p1, v1

    goto/16 :goto_0

    :cond_14
    move v1, v3

    goto/16 :goto_6

    :cond_15
    move v1, v2

    goto/16 :goto_2
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->g_()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    .line 212
    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->g_()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    .line 213
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 215
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 216
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->v()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->v()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :cond_1
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Z)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Z)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 267
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 254
    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 256
    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 261
    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 262
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 264
    goto :goto_0

    .line 267
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
