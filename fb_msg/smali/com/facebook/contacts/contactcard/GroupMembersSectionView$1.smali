.class Lcom/facebook/contacts/contactcard/GroupMembersSectionView$1;
.super Ljava/lang/Object;
.source "GroupMembersSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/contacts/contactcard/GroupMembersSectionView;


# direct methods
.method constructor <init>(Lcom/facebook/contacts/contactcard/GroupMembersSectionView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView$1;->a:Lcom/facebook/contacts/contactcard/GroupMembersSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    check-cast p1, Lcom/facebook/contacts/contactcard/ThreadMemberRow;

    .line 71
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView$1;->a:Lcom/facebook/contacts/contactcard/GroupMembersSectionView;

    invoke-virtual {p1}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->getParticipant()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->a(Lcom/facebook/contacts/contactcard/GroupMembersSectionView;Lcom/facebook/orca/threads/ThreadParticipant;)V

    .line 72
    return-void
.end method
