.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$a;
.super Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub;
.source "BinderPoolService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public queryBinder(I)Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "MultiProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryBinder...........binderCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    .line 64
    packed-switch p1, :pswitch_data_36

    .line 91
    :goto_1c
    return-object v0

    .line 66
    :pswitch_1d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;

    move-result-object v0

    goto :goto_1c

    .line 70
    :pswitch_22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;

    move-result-object v0

    goto :goto_1c

    .line 74
    :pswitch_27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    move-result-object v0

    goto :goto_1c

    .line 79
    :pswitch_2c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    move-result-object v0

    goto :goto_1c

    .line 84
    :pswitch_31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    move-result-object v0

    goto :goto_1c

    .line 64
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_22
        :pswitch_27
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method
