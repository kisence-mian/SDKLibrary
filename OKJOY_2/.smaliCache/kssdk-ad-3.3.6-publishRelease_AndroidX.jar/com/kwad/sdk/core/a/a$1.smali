.class final Lcom/kwad/sdk/core/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/crash/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/a/a;->b(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)Lcom/kwad/sdk/crash/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .registers 3

    packed-switch p1, :pswitch_data_4

    :pswitch_3
    return-void

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
