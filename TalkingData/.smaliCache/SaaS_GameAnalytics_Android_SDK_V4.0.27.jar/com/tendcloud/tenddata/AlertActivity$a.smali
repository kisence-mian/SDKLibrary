.class Lcom/tendcloud/tenddata/AlertActivity$a;
.super Landroid/webkit/WebViewClient;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/AlertActivity;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/AlertActivity;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 146
    :try_start_0
    iget-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {p1}, Lcom/tendcloud/tenddata/AlertActivity;->b(Lcom/tendcloud/tenddata/AlertActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:parseMessage(\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    .line 147
    invoke-static {v0}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lcom/tendcloud/tenddata/AlertActivity;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\')"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    .line 152
    goto :goto_2e

    .line 148
    :catchall_2d
    move-exception p1

    .line 153
    :goto_2e
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 158
    if-eqz p2, :cond_18

    :try_start_2
    const-string p1, "talkingdata://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 159
    iget-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lcom/tendcloud/tenddata/AlertActivity;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/AlertActivity;->finish()V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    .line 161
    const/4 p1, 0x1

    return p1

    .line 163
    :catchall_16
    move-exception p1

    goto :goto_19

    .line 167
    :cond_18
    nop

    .line 168
    :goto_19
    const/4 p1, 0x0

    return p1
.end method
