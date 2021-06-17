.class final Lcom/appsflyer/share/CrossPromotionHelper$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/share/CrossPromotionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final AFInAppEventType:Z

.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/bt;

.field private final valueOf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/appsflyer/internal/bt;Landroid/content/Context;Z)V
    .registers 5

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->values:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->AFKeystoreWrapper:Lcom/appsflyer/internal/bt;

    .line 113
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->valueOf:Ljava/lang/ref/WeakReference;

    .line 114
    iput-boolean p4, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->AFInAppEventType:Z

    .line 115
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 119
    iget-boolean v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->AFInAppEventType:Z

    if-eqz v0, :cond_5

    return-void

    .line 120
    :cond_5
    const/4 v0, 0x0

    .line 122
    :try_start_6
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->values:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_ae

    .line 123
    const/16 v0, 0x2710

    :try_start_15
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 125
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 126
    sparse-switch v2, :sswitch_data_c6

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 132
    :sswitch_26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cross promotion redirection success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->values:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 133
    iget-object v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->AFKeystoreWrapper:Lcom/appsflyer/internal/bt;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->valueOf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 134
    iget-object v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->AFKeystoreWrapper:Lcom/appsflyer/internal/bt;

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1016
    iput-object v2, v0, Lcom/appsflyer/internal/bt;->AFInAppEventType:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->AFKeystoreWrapper:Lcom/appsflyer/internal/bt;

    iget-object v2, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->valueOf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 1020
    iget-object v3, v0, Lcom/appsflyer/internal/bt;->AFInAppEventType:Ljava/lang/String;

    if-eqz v3, :cond_74

    .line 1021
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v0, v0, Lcom/appsflyer/internal/bt;->AFInAppEventType:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    :cond_74
    goto :goto_a6

    .line 128
    :sswitch_75
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cross promotion impressions success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->values:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 129
    goto :goto_a6

    .line 139
    :goto_8a
    const-string v3, "call to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/share/CrossPromotionHelper$b;->values:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_15 .. :try_end_a6} :catchall_ac

    .line 145
    :cond_a6
    :goto_a6
    if-eqz v1, :cond_bc

    :goto_a8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 142
    :catchall_ac
    move-exception v0

    goto :goto_b2

    :catchall_ae
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 143
    :goto_b2
    :try_start_b2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_bd

    .line 145
    if-eqz v1, :cond_bc

    goto :goto_a8

    .line 147
    :cond_bc
    return-void

    .line 145
    :catchall_bd
    move-exception v0

    if-eqz v1, :cond_c3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :cond_c3
    goto :goto_c5

    :goto_c4
    throw v0

    :goto_c5
    goto :goto_c4

    :sswitch_data_c6
    .sparse-switch
        0xc8 -> :sswitch_75
        0x12d -> :sswitch_26
        0x12e -> :sswitch_26
    .end sparse-switch
.end method
