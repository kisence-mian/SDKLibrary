.class Lcom/sigmob/sdk/videoAd/BaseAdActivity$1;
.super Landroid/content/ContextWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/BaseAdActivity;->attachBaseContext(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/BaseAdActivity;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/BaseAdActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/BaseAdActivity$1;->a:Lcom/sigmob/sdk/videoAd/BaseAdActivity;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity$1;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10
.end method
