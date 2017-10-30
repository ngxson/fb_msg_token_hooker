.class public Lcom/facebook/orca/threadlist/ThreadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThreadListAdapter.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/lang/Object;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Landroid/view/LayoutInflater;

.field private final h:Lcom/facebook/orca/cache/ArchiveThreadManager;

.field private final i:Lcom/facebook/orca/cache/SpamThreadManager;

.field private j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

.field private k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

.field private l:Ljava/lang/String;

.field private m:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/ArchiveThreadManager;Lcom/facebook/orca/cache/SpamThreadManager;Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    .line 57
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    .line 59
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    .line 60
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    .line 67
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->f:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Lcom/facebook/orca/cache/ArchiveThreadManager;

    .line 69
    iput-object p3, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->i:Lcom/facebook/orca/cache/SpamThreadManager;

    .line 70
    iput-object p4, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 268
    .line 269
    if-nez p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_thread_list_start_thread_button_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 271
    sget v0, Lcom/facebook/R$id;->thread_list_start_thread_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    sget v1, Lcom/facebook/R$string;->thread_start_thread_button:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    :cond_0
    return-object p1
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 299
    .line 300
    if-nez p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_load_more_placeholder_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 303
    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListAdapter;)Lcom/facebook/orca/cache/ArchiveThreadManager;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Lcom/facebook/orca/cache/ArchiveThreadManager;

    return-object v0
.end method

.method private a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 126
    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 130
    :cond_0
    if-nez v1, :cond_1

    .line 140
    :goto_2
    return-object p1

    .line 134
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 136
    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3

    .line 140
    :cond_3
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-ne v0, v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c()V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 278
    .line 279
    if-nez p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_thread_list_new_thread_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 281
    sget v0, Lcom/facebook/R$id;->thread_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    return-object p1
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 307
    .line 308
    if-nez p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_load_more_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 311
    :cond_0
    return-object p1
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListAdapter;)Lcom/facebook/orca/cache/SpamThreadManager;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->i:Lcom/facebook/orca/cache/SpamThreadManager;

    return-object v0
.end method

.method private b(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ArchiveThreadManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter$1;-><init>(Lcom/facebook/orca/threadlist/ThreadListAdapter;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    .line 104
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method private c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 316
    .line 317
    if-nez p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_loading_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 320
    :cond_0
    return-object p1
.end method

.method private c(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->i:Lcom/facebook/orca/cache/SpamThreadManager;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/SpamThreadManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter$2;-><init>(Lcom/facebook/orca/threadlist/ThreadListAdapter;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 110
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 117
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    .line 118
    return-void
.end method

.method private d(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter$3;-><init>(Lcom/facebook/orca/threadlist/ThreadListAdapter;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ThreadSummary;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 290
    check-cast p2, Lcom/facebook/orca/threadlist/ThreadItemView;

    .line 291
    if-nez p2, :cond_0

    .line 292
    new-instance p2, Lcom/facebook/orca/threadlist/ThreadItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->f:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;-><init>(Landroid/content/Context;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    invoke-virtual {p2, p1, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V

    .line 295
    return-object p2
.end method

.method a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    .line 87
    return-void
.end method

.method public a(Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    .line 75
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    .line 91
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a()V

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    sget-object v2, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE_PLACEHOLDER:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    if-ne v0, v1, :cond_1

    .line 229
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    if-ne v0, v1, :cond_2

    .line 231
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    goto :goto_0

    .line 233
    :cond_2
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Ljava/lang/Object;

    goto :goto_0

    .line 236
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 241
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 200
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 202
    :cond_0
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 203
    const/4 v0, 0x2

    goto :goto_0

    .line 204
    :cond_1
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 205
    const/4 v0, 0x4

    goto :goto_0

    .line 206
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 207
    const/4 v0, 0x5

    goto :goto_0

    .line 208
    :cond_3
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 209
    const/4 v0, 0x6

    goto :goto_0

    .line 210
    :cond_4
    instance-of v0, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_5

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 251
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 252
    :cond_1
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 253
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 255
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_3
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 257
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_4
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Ljava/lang/Object;

    if-ne v0, v1, :cond_5

    .line 259
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_5
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_6

    .line 261
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threads/ThreadSummary;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x7

    return v0
.end method
