.class public Lcom/facebook/contacts/contactcard/NameConversationView;
.super Lcom/facebook/widget/CustomFrameLayout;
.source "NameConversationView.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final b:Landroid/widget/RelativeLayout;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/facebook/widget/UrlImage;

.field private e:Lcom/facebook/orca/threads/ThreadSummary;

.field private f:Ljava/lang/String;

.field private g:Lcom/facebook/orca/threadview/ThreadViewFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/contacts/contactcard/NameConversationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/contacts/contactcard/NameConversationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/facebook/R$id;->thread_view_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewFragment;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->g:Lcom/facebook/orca/threadview/ThreadViewFragment;

    .line 71
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/NameConversationView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 72
    const-class v1, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->a:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 74
    sget v0, Lcom/facebook/R$layout;->contacts_name_conversation_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/NameConversationView;->setContentView(I)V

    .line 75
    sget v0, Lcom/facebook/R$id;->contact_card_thread_name_and_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/NameConversationView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->b:Landroid/widget/RelativeLayout;

    .line 76
    sget v0, Lcom/facebook/R$id;->thread_view_details_item_thread_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/NameConversationView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UrlImage;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->d:Lcom/facebook/widget/UrlImage;

    .line 77
    sget v0, Lcom/facebook/R$id;->thread_view_details_item_value:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/NameConversationView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->c:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/facebook/R$drawable;->orca_item_background_holo_light:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 86
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->c:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->d:Lcom/facebook/widget/UrlImage;

    invoke-virtual {v0, v2}, Lcom/facebook/widget/UrlImage;->setFocusable(Z)V

    .line 92
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->d:Lcom/facebook/widget/UrlImage;

    invoke-virtual {v0, v2}, Lcom/facebook/widget/UrlImage;->setClickable(Z)V

    .line 93
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->d:Lcom/facebook/widget/UrlImage;

    new-instance v1, Lcom/facebook/contacts/contactcard/NameConversationView$1;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/NameConversationView$1;-><init>(Lcom/facebook/contacts/contactcard/NameConversationView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/facebook/contacts/contactcard/NameConversationView$2;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/NameConversationView$2;-><init>(Lcom/facebook/contacts/contactcard/NameConversationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->b:Landroid/widget/RelativeLayout;

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/NameConversationView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->e:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/NameConversationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v1, "threadId"

    iget-object v2, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "hasPictureHash"

    iget-object v2, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/NameConversationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/NameConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/NameConversationView;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/NameConversationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadNamePicker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/facebook/contacts/contactcard/NameConversationView$3;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/NameConversationView$3;-><init>(Lcom/facebook/contacts/contactcard/NameConversationView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadNamePicker;->a(Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;)V

    .line 150
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/contacts/contactcard/NameConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/NameConversationView;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Z)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    .line 161
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/contacts/contactcard/NameConversationView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    .line 162
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->h()Lcom/facebook/orca/server/ModifyThreadParams;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->g:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/server/ModifyThreadParams;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/contacts/contactcard/NameConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/NameConversationView;->c()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 110
    iput-object p2, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->e:Lcom/facebook/orca/threads/ThreadSummary;

    .line 111
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->f:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 114
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/NameConversationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->orca_default_camera_tile:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->d:Lcom/facebook/widget/UrlImage;

    invoke-virtual {v0, v2}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->d:Lcom/facebook/widget/UrlImage;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->a:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, p2, v4}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setImageParams(Landroid/net/Uri;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView;->d:Lcom/facebook/widget/UrlImage;

    sget-object v1, Lcom/facebook/widget/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    goto :goto_0
.end method
