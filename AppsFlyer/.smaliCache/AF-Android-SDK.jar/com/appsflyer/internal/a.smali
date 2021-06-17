.class final Lcom/appsflyer/internal/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/a$c;,
        Lcom/appsflyer/internal/a$d;
    }
.end annotation


# instance fields
.field private valueOf:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsflyer/internal/a;->valueOf:Landroid/content/IntentFilter;

    .line 19
    return-void
.end method


# virtual methods
.method final AFInAppEventType(Landroid/content/Context;)Lcom/appsflyer/internal/a$d;
    .registers 7

    .line 36
    nop

    .line 37
    nop

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/appsflyer/internal/a;->valueOf:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    .line 41
    if-eqz p1, :cond_4e

    .line 43
    const/4 v2, 0x2

    const-string v3, "status"

    .line 44
    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 45
    :goto_19
    if-eqz v2, :cond_31

    .line 47
    const-string v2, "plugged"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 48
    packed-switch v2, :pswitch_data_54

    .line 59
    :pswitch_24
    const-string v0, "other"

    goto :goto_30

    .line 56
    :pswitch_27
    const-string v0, "wireless"

    .line 57
    goto :goto_33

    .line 50
    :pswitch_2a
    const-string v0, "usb"

    .line 51
    goto :goto_33

    .line 53
    :pswitch_2d
    const-string v0, "ac"

    .line 54
    goto :goto_33

    .line 61
    :goto_30
    goto :goto_33

    .line 62
    :cond_31
    const-string v0, "no"

    .line 66
    :goto_33
    const-string v2, "level"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 67
    const-string v3, "scale"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_4c

    .line 69
    if-eq v4, v2, :cond_4e

    if-eq v4, p1, :cond_4e

    .line 70
    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v2, v2

    mul-float v2, v2, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    move v1, v2

    goto :goto_4e

    .line 73
    :catchall_4c
    move-exception p1

    nop

    .line 76
    :cond_4e
    :goto_4e
    new-instance p1, Lcom/appsflyer/internal/a$d;

    invoke-direct {p1, v1, v0}, Lcom/appsflyer/internal/a$d;-><init>(FLjava/lang/String;)V

    return-object p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2a
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method
