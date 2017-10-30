.class public Lcom/facebook/orca/common/ui/titlebar/TitleBar;
.super Lcom/facebook/widget/CustomViewGroup;
.source "TitleBar.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;


# instance fields
.field private a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/OrcaConfig;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private c:Lcom/facebook/orca/app/OrcaAppType;

.field private d:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;

.field private g:Landroid/view/View;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/LinearLayout;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:Lcom/facebook/orca/common/visuals/VisualAppTheme;

.field private x:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/16 v4, 0x88

    const/4 v3, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 103
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a:Ljavax/inject/Provider;

    .line 104
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 105
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c:Lcom/facebook/orca/app/OrcaAppType;

    .line 106
    const-class v0, Lcom/facebook/orca/common/visuals/VisualAppTheme;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/visuals/VisualAppTheme;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->w:Lcom/facebook/orca/common/visuals/VisualAppTheme;

    .line 107
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 108
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsSmsOnlyModeActive;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->e:Ljavax/inject/Provider;

    .line 110
    sget-object v0, Lcom/facebook/R$styleable;->TitleBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    .line 113
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    sget v0, Lcom/facebook/R$layout;->orca_titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setContentView(I)V

    .line 118
    sget v0, Lcom/facebook/R$id;->titlebar_back_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;

    .line 119
    sget v0, Lcom/facebook/R$id;->titlebar_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/view/View;

    .line 120
    sget v0, Lcom/facebook/R$id;->titlebar_default_text_title:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    .line 121
    sget v0, Lcom/facebook/R$id;->titlebar_main_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/view/ViewGroup;

    .line 122
    sget v0, Lcom/facebook/R$id;->titlebar_text_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/view/ViewGroup;

    .line 123
    sget v0, Lcom/facebook/R$id;->titlebar_menu_arrow:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->j:Landroid/widget/ImageView;

    .line 124
    sget v0, Lcom/facebook/R$id;->titlebar_button_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setText(Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    const-string v1, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "com.facebook.orca.ACTION_MQTT_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "com.facebook.orca.login.LoginActions.ON_LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "com.facebook.orca.login.LoginActions.ON_LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/view/ViewGroup;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->h()Lcom/facebook/orca/app/IntendedAudience;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/app/IntendedAudience;->DEVELOPMENT:Lcom/facebook/orca/app/IntendedAudience;

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0, v6}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setWillNotDraw(Z)V

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;->setVisibility(I)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBar$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$3;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c()V

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;I)V

    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    .line 410
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 412
    :goto_1
    invoke-virtual {p1, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setSelected(Z)V

    .line 413
    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a(Z)V

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;)V

    goto :goto_0

    .line 411
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 402
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 391
    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "click"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    const-string v2, "button"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    .line 396
    instance-of v2, v0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    if-eqz v2, :cond_1

    .line 397
    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsActivity;->h()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 478
    sget v1, Lcom/facebook/R$id;->titlebar_stub:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 482
    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 491
    sget v1, Lcom/facebook/R$id;->titlebar_stub:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 492
    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->x:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 328
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 329
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v4, -0x2

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 332
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 334
    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;-><init>(Landroid/content/Context;)V

    .line 335
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 337
    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    new-instance v2, Lcom/facebook/orca/common/ui/titlebar/TitleBar$4;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$4;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;I)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    if-nez v0, :cond_0

    .line 346
    sget v2, Lcom/facebook/R$id;->title_button_1:I

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setId(I)V

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    move v4, v3

    .line 351
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 353
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    .line 354
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setText(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v0, v5}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setVisibility(I)V

    .line 357
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setSelected(Z)V

    .line 358
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 359
    iget-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->q:Z

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setShowProgress(Z)V

    .line 360
    const/4 v1, 0x1

    .line 351
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_1

    :cond_2
    move v5, v3

    .line 356
    goto :goto_2

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 366
    invoke-virtual {v0, v7}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setVisibility(I)V

    .line 367
    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setShowProgress(Z)V

    .line 364
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 370
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    if-eqz v0, :cond_7

    .line 371
    if-eqz v4, :cond_5

    .line 372
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    invoke-virtual {v0, v7}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setProgressBarVisibility(I)V

    .line 381
    :goto_5
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d()V

    .line 382
    return-void

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    iget-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->q:Z

    if-eqz v1, :cond_6

    :goto_6
    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setProgressBarVisibility(I)V

    goto :goto_5

    :cond_6
    move v3, v6

    goto :goto_6

    .line 377
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    invoke-virtual {v0, v7}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setProgressBarVisibility(I)V

    goto :goto_5

    :cond_8
    move v1, v4

    goto :goto_3
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 441
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaConfig;

    .line 442
    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;->SMS_ONLY:Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setColorScheme(Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V

    .line 451
    :goto_0
    return-void

    .line 446
    :cond_0
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;->FACEBOOK:Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setColorScheme(Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0xff

    invoke-static {v3, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b()V

    return-void
.end method

.method private setColorScheme(Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V
    .locals 2
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;->setColorScheme(Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V

    .line 457
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 459
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setColorScheme(Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V

    .line 457
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 462
    :cond_0
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$5;->b:[I

    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 470
    :goto_1
    return-void

    .line 464
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/view/View;

    sget v1, Lcom/facebook/R$drawable;->orca_title_bar_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 467
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/view/View;

    sget v1, Lcom/facebook/R$drawable;->orca_title_bar_sms_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 301
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->q:Z

    .line 303
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    :cond_0
    move v1, v2

    .line 308
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 311
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setShowProgress(Z)V

    .line 312
    const/4 v0, 0x1

    .line 317
    :goto_2
    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setProgressBarVisibility(I)V

    goto :goto_0

    .line 308
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 319
    :cond_2
    if-eqz p1, :cond_3

    .line 320
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setProgressBarVisibility(I)V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setProgressBarVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->w:Lcom/facebook/orca/common/visuals/VisualAppTheme;

    sget-object v1, Lcom/facebook/orca/common/visuals/VisualAppTheme;->FB4A:Lcom/facebook/orca/common/visuals/VisualAppTheme;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/facebook/widget/CustomViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->h()Lcom/facebook/orca/app/IntendedAudience;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/app/IntendedAudience;->DEVELOPMENT:Lcom/facebook/orca/app/IntendedAudience;

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Landroid/graphics/Paint;

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4120

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 216
    :cond_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public getButtonSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    return-object v0
.end method

.method public getCustomTitleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/view/View;

    return-object v0
.end method

.method public getOnToolbarButtonListener()Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/facebook/widget/CustomViewGroup;->onAttachedToWindow()V

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 198
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d()V

    .line 199
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Lcom/facebook/widget/CustomViewGroup;->onDetachedFromWindow()V

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b()V

    .line 205
    return-void
.end method

.method public setButtonSpecs(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Ljava/util/List;

    .line 280
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c()V

    .line 281
    return-void
.end method

.method public setCustomTitleView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/view/View;

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 264
    :cond_0
    if-eqz p1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setVisibility(I)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHasBackButton(Z)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    .line 237
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarBackButton;->setVisibility(I)V

    .line 238
    return-void

    .line 237
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setHasProgressBar(Z)V
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 247
    :goto_0
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    .line 248
    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c()V

    .line 251
    :cond_0
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    .line 428
    return-void
.end method

.method public setQuickActionMenuListener(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->x:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    .line 501
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setText(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarDefaultTextTitle;->setText(Ljava/lang/String;)V

    .line 226
    return-void
.end method
