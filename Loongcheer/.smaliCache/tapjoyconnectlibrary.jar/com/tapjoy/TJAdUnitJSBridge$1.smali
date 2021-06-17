.class final Lcom/tapjoy/TJAdUnitJSBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->alert(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V
    .registers 3

    .line 222
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 225
    nop

    .line 227
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_24

    const/4 v2, 0x0

    goto :goto_f

    .line 235
    :pswitch_8
    const/4 v2, 0x2

    goto :goto_f

    .line 229
    :pswitch_a
    nop

    .line 230
    const/4 v2, 0x0

    goto :goto_f

    .line 232
    :pswitch_d
    nop

    .line 233
    const/4 v2, 0x1

    .line 240
    :goto_f
    :try_start_f
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    .line 243
    return-void

    .line 242
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    return-void

    :pswitch_data_24
    .packed-switch -0x3
        :pswitch_d
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method
