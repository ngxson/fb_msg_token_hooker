.class public Lcom/facebook/orca/threadview/MessageListAdapter;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter",
        "<",
        "Lcom/facebook/orca/threadview/RowItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/orca/threadview/RowItem;

.field public static final b:Lcom/facebook/orca/threadview/RowItem;

.field public static final c:Lcom/facebook/orca/threadview/RowItem;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/view/LayoutInflater;

.field private f:Lcom/facebook/orca/threadview/MessageListAdapter$MessageListAdapterListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/orca/threadview/SimpleRowItem;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/SimpleRowItem;-><init>(I)V

    sput-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    .line 45
    new-instance v0, Lcom/facebook/orca/threadview/SimpleRowItem;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/SimpleRowItem;-><init>(I)V

    sput-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    .line 47
    new-instance v0, Lcom/facebook/orca/threadview/SimpleRowItem;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/SimpleRowItem;-><init>(I)V

    sput-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 191
    .line 192
    if-nez p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_load_more_placeholder_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 195
    :cond_0
    return-object p1
.end method

.method private a(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    check-cast p2, Lcom/facebook/orca/threadview/ReceiptItemView;

    .line 154
    if-nez p2, :cond_0

    .line 155
    new-instance p2, Lcom/facebook/orca/threadview/ReceiptItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadview/ReceiptItemView;-><init>(Landroid/content/Context;)V

    .line 157
    :cond_0
    check-cast p1, Lcom/facebook/orca/threadview/RowReceiptItem;

    invoke-virtual {p2, p1}, Lcom/facebook/orca/threadview/ReceiptItemView;->setRowReceiptItem(Lcom/facebook/orca/threadview/RowReceiptItem;)V

    .line 158
    return-object p2
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 199
    .line 200
    if-nez p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_load_more_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 203
    :cond_0
    return-object p1
.end method

.method private b(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 162
    check-cast p1, Lcom/facebook/orca/threadview/RowTypingItem;

    .line 163
    check-cast p2, Lcom/facebook/orca/threadview/TypingItemView;

    .line 164
    if-nez p2, :cond_0

    .line 165
    new-instance p2, Lcom/facebook/orca/threadview/TypingItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadview/TypingItemView;-><init>(Landroid/content/Context;)V

    .line 167
    :cond_0
    invoke-virtual {p2, p1}, Lcom/facebook/orca/threadview/TypingItemView;->setTypingItem(Lcom/facebook/orca/threadview/RowTypingItem;)V

    .line 168
    return-object p2
.end method

.method private c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 207
    .line 208
    if-nez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_loading_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 211
    :cond_0
    return-object p1
.end method

.method private c(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    check-cast p2, Lcom/facebook/orca/threadview/MessageItemView;

    .line 173
    if-nez p2, :cond_0

    .line 174
    new-instance p2, Lcom/facebook/orca/threadview/MessageItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadview/MessageItemView;-><init>(Landroid/content/Context;)V

    .line 176
    :cond_0
    check-cast p1, Lcom/facebook/orca/threadview/RowMessageItem;

    .line 177
    invoke-virtual {p2, p1, p0}, Lcom/facebook/orca/threadview/MessageItemView;->a(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threadview/MessageListAdapter;)V

    .line 178
    return-object p2
.end method

.method private d(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    check-cast p2, Lcom/facebook/orca/threadview/AdminMessageItemView;

    .line 183
    if-nez p2, :cond_0

    .line 184
    new-instance p2, Lcom/facebook/orca/threadview/AdminMessageItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadview/AdminMessageItemView;-><init>(Landroid/content/Context;)V

    .line 186
    :cond_0
    check-cast p1, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/orca/threadview/AdminMessageItemView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 187
    return-object p2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xe

    return v0
.end method

.method public a(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowItem;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 130
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->c(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->d(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/facebook/orca/threadview/RowItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/RowItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/threadview/MessageListAdapter$MessageListAdapterListener;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->f:Lcom/facebook/orca/threadview/MessageListAdapter$MessageListAdapterListener;

    .line 222
    return-void
.end method

.method public a(Lcom/facebook/orca/threadview/RowItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    instance-of v2, p1, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v2, :cond_2

    .line 90
    check-cast p1, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/facebook/orca/threadview/RowItem;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/RowItem;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/orca/threadview/RowItem;)J
    .locals 2
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-ne p1, v0, :cond_0

    .line 103
    const-wide/16 v0, 0x2

    .line 113
    :goto_0
    return-wide v0

    .line 104
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-ne p1, v0, :cond_1

    .line 105
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    if-ne p1, v0, :cond_2

    .line 107
    const-wide/16 v0, 0x4

    goto :goto_0

    .line 108
    :cond_2
    instance-of v0, p1, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v0, :cond_3

    .line 109
    check-cast p1, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 111
    :cond_3
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)J
    .locals 2
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/facebook/orca/threadview/RowItem;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Lcom/facebook/orca/threadview/RowItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/facebook/orca/threadview/RowItem;)I
    .locals 1
    .parameter

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowItem;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/facebook/orca/threadview/RowItem;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->c(Lcom/facebook/orca/threadview/RowItem;)I

    move-result v0

    return v0
.end method

.method public d(Lcom/facebook/orca/threadview/RowItem;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->f:Lcom/facebook/orca/threadview/MessageListAdapter$MessageListAdapterListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->f:Lcom/facebook/orca/threadview/MessageListAdapter$MessageListAdapterListener;

    invoke-interface {v0, p1}, Lcom/facebook/orca/threadview/MessageListAdapter$MessageListAdapterListener;->a(Lcom/facebook/orca/threadview/RowItem;)V

    .line 218
    :cond_0
    return-void
.end method
