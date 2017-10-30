.class public Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;
.super Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;
.source "ContactPickerFriendFilter.java"


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->b:Ljavax/inject/Provider;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 86
    const/16 v1, 0x1e

    invoke-interface {v0, p1, v1}, Lcom/facebook/orca/users/FacebookUserIterator;->a(Ljava/lang/String;I)V

    .line 89
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    throw v1

    :cond_0
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    .line 95
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    return-void
.end method

.method private a(Ljava/util/List;Lcom/google/common/collect/ImmutableList$Builder;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 118
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v2

    .line 119
    if-nez v2, :cond_1

    .line 120
    const-string v2, "orca:ContactPickerFriendFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping user with no FBID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->a(Lcom/facebook/orca/users/UserIdentifier;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    new-instance v3, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v3, v0, v2}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    invoke-interface {v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 128
    :cond_2
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/CharSequence;)Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;
    .locals 5
    .parameter

    .prologue
    .line 42
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 43
    const-string v0, "ContactPickerFriendFilter.Filtering"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;

    invoke-direct {v2}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 49
    invoke-direct {p0, v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 52
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->a(Ljava/util/List;)V

    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 55
    invoke-direct {p0, v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->a(Ljava/util/List;Lcom/google/common/collect/ImmutableList$Builder;)V

    .line 56
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a(Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v0

    .line 59
    iput-object v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    .line 60
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c()I

    move-result v0

    iput v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 71
    const-string v0, "orca:ContactPickerFriendFilter"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->c(Ljava/lang/String;)V

    .line 73
    :goto_2
    return-object v2

    .line 46
    :cond_0
    :try_start_1
    const-string v0, ""

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    .line 63
    const/4 v0, -0x1

    iput v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_2
    const-string v3, "orca:ContactPickerFriendFilter"

    const-string v4, "Exception during filtering"

    invoke-static {v3, v4, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    invoke-static {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 71
    const-string v0, "orca:ContactPickerFriendFilter"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 71
    const-string v1, "orca:ContactPickerFriendFilter"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->c(Ljava/lang/String;)V

    .line 72
    throw v0
.end method
