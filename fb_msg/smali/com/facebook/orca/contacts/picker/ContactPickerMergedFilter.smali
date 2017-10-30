.class public Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;
.super Ljava/lang/Object;
.source "ContactPickerMergedFilter.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

.field private d:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

.field private e:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FINISHED:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->e:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 111
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;

    .line 113
    new-instance v3, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    invoke-direct {v3, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b:Lcom/google/common/collect/ImmutableList;

    .line 116
    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;Ljava/util/Set;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/UserIdentifierKey;",
            ">;)",
            "Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 258
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 259
    instance-of v3, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v3, :cond_1

    .line 260
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 261
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Lcom/facebook/orca/users/UserIdentifier;->e()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a(Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList$Builder;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/UserIdentifierKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 277
    instance-of v2, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v2, :cond_1

    .line 278
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 279
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->e()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 282
    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->e()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 288
    :cond_2
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 173
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FINISHED:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    .line 175
    sget-object v3, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FILTERING:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->d()Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    move-result-object v0

    if-ne v3, v0, :cond_0

    .line 176
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FILTERING:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->e:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    if-eq v0, v1, :cond_1

    .line 182
    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->e:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 183
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a:Ljava/lang/Class;

    const-string v2, "New filtering state: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->d:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->d:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->e:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;->a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    .line 188
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->c(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_0

    .line 193
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a:Ljava/lang/Class;

    const-string v3, "New filtering result: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->c:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

    invoke-interface {v2, p1, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V

    .line 195
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->d:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    if-eqz v2, :cond_0

    .line 197
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$3;->a:[I

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->d:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    invoke-interface {v1, v0}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;->a(I)V

    .line 212
    :cond_0
    return-void

    .line 199
    :pswitch_0
    const/4 v0, -0x1

    .line 200
    goto :goto_0

    .line 202
    :pswitch_1
    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c()I

    move-result v0

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 7
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->c()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 251
    :cond_1
    :goto_0
    return-object v0

    .line 222
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;->EMPTY_CONSTRAINT:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    if-eq v1, v2, :cond_1

    .line 224
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;->EXCEPTION:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    if-eq v1, v2, :cond_1

    .line 228
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v2

    .line 229
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    .line 232
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->c()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_3

    .line 235
    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a()Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    move-result-object v5

    sget-object v6, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;->OK:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult$Type;

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 237
    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;Ljava/util/Set;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V

    .line 241
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c()I

    move-result v5

    if-lez v5, :cond_3

    .line 242
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 243
    new-instance v5, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 246
    :cond_5
    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0, v3, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList$Builder;Ljava/util/Set;)V

    goto :goto_1

    .line 251
    :cond_6
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a(Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    .line 144
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->a()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V
    .locals 4
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->c:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    .line 122
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->a()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v2

    new-instance v3, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;)V

    invoke-interface {v2, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    .line 137
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->a()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V

    .line 151
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->d:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;

    .line 157
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;->a()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v2

    new-instance v3, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$2;

    invoke-direct {v3, p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$2;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerFilterInstance;)V

    invoke-interface {v2, p1, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method
