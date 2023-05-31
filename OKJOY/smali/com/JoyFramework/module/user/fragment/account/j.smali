.class Lcom/JoyFramework/module/user/fragment/account/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/j;->a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/j;->a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    # getter for: Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->access$300(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 225
    return-void
.end method
