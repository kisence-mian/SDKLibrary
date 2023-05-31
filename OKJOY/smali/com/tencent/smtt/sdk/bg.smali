.class Lcom/tencent/smtt/sdk/bg;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/tencent/smtt/sdk/bi;

.field private c:Landroid/widget/VideoView;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bg;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/bg;->d:Landroid/content/Context;

    return-void
.end method

.method private b(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->b()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, "callMode"

    const-string v1, "callMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->b:Lcom/tencent/smtt/sdk/bi;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/bg;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p0, p2}, Lcom/tencent/smtt/sdk/bi;->a(Ljava/lang/Object;Landroid/os/Bundle;Landroid/widget/FrameLayout;Ljava/lang/Object;)Z

    move-result v0

    :cond_1d
    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_28
    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    if-nez v0, :cond_37

    new-instance v0, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    :cond_37
    const-string v0, "videoUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bg;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/bg;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.smtt.tbs.video.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6d
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/bg;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->b:Lcom/tencent/smtt/sdk/bi;

    if-nez v0, :cond_3c

    invoke-static {v3}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;ZZ)V

    invoke-static {v3}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/bh;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bh;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    :cond_29
    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/QbSdk;->canLoadVideo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v1, Lcom/tencent/smtt/sdk/bi;

    invoke-direct {v1, v0}, Lcom/tencent/smtt/sdk/bi;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/bg;->b:Lcom/tencent/smtt/sdk/bi;

    :cond_3c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->b:Lcom/tencent/smtt/sdk/bi;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->a:Ljava/lang/Object;

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->b:Lcom/tencent/smtt/sdk/bi;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/bi;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bg;->a:Ljava/lang/Object;

    :cond_54
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 6

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->b()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_49

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_54

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_54
    return-void
.end method

.method a(Landroid/app/Activity;I)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_13

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->b()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_13
    const/4 v0, 0x4

    if-ne p2, v0, :cond_29

    iput-object v1, p0, Lcom/tencent/smtt/sdk/bg;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->b()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/bg;->c:Landroid/widget/VideoView;

    :cond_29
    const/4 v0, 0x2

    if-ne p2, v0, :cond_37

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->b()Z

    move-result v0

    if-nez v0, :cond_37

    iput-object p1, p0, Lcom/tencent/smtt/sdk/bg;->d:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/bg;->a(Landroid/app/Activity;)V

    :cond_37
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->b()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->b:Lcom/tencent/smtt/sdk/bi;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/bg;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/smtt/sdk/bi;->a(Ljava/lang/Object;Landroid/app/Activity;I)V

    :cond_44
    return-void
.end method

.method a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/bg;->b(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->b:Lcom/tencent/smtt/sdk/bi;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->a:Ljava/lang/Object;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->b:Lcom/tencent/smtt/sdk/bi;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/bg;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/bi;->a(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9

    const/4 v1, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bg;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_14
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bg;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v2, "\u64ad\u653e\u5931\u8d25\uff0c\u8bf7\u9009\u62e9\u5176\u5b83\u64ad\u653e\u5668\u64ad\u653e"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/bg;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_42} :catch_44

    :cond_42
    move v0, v1

    :goto_43
    return v0

    :catch_44
    move-exception v0

    const/4 v0, 0x0

    goto :goto_43
.end method
