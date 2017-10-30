.class Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$2;
.super Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;
.source "GenericFirstPartySsoViewGroup.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$2;->a:Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$2;->a:Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;

    #calls: Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->onNotYouClicked()V
    invoke-static {v0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->access$100(Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;)V

    .line 105
    return-void
.end method
