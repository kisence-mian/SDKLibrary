.class Landroid/support/v7/app/ActionBarActivityDelegateBase$1;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
    .registers 2

    .line 111
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 114
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # getter for: Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I
    invoke-static {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$000(Landroid/support/v7/app/ActionBarActivityDelegateBase;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 115
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # invokes: Landroid/support/v7/app/ActionBarActivityDelegateBase;->doInvalidatePanelMenu(I)V
    invoke-static {v0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$100(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)V

    .line 117
    :cond_10
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # getter for: Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I
    invoke-static {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$000(Landroid/support/v7/app/ActionBarActivityDelegateBase;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_21

    .line 118
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    const/16 v2, 0x8

    # invokes: Landroid/support/v7/app/ActionBarActivityDelegateBase;->doInvalidatePanelMenu(I)V
    invoke-static {v0, v2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$100(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)V

    .line 120
    :cond_21
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # setter for: Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z
    invoke-static {v0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$202(Landroid/support/v7/app/ActionBarActivityDelegateBase;Z)Z

    .line 121
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # setter for: Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I
    invoke-static {v0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$002(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)I

    .line 122
    return-void
.end method
