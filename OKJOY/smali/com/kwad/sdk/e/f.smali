.class public Lcom/kwad/sdk/e/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/os/Handler;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kwad/sdk/e/f;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kwad/sdk/e/f;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "ksad_content_alliance_toast"

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/e/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    sget-boolean v0, Lcom/kwad/sdk/e/f;->b:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/e/f;->b:Z

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v0, "ksad_message_toast_txt"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/kwad/sdk/e/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/e/f$a;

    invoke-direct {v1}, Lcom/kwad/sdk/e/f$a;-><init>()V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/kwad/sdk/e/f;->b:Z

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "ksad_content_alliance_toast_light"

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/e/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
