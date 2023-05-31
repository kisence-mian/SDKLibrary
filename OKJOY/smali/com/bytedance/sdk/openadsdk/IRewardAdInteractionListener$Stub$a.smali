.class Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;
.super Ljava/lang/Object;
.source "IRewardAdInteractionListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    .line 123
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onAdClose()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 191
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 193
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 196
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    return-void

    .line 196
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onAdShow()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 157
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 159
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 162
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    return-void

    .line 162
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onAdVideoBarClick()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 174
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 176
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 179
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    return-void

    .line 179
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onDestroy()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 140
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 142
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    return-void

    .line 145
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onRewardVerify(ZILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 246
    :try_start_9
    const-string v3, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 251
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_2b

    .line 254
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    return-void

    .line 254
    :catchall_2b
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onSkippedVideo()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 266
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 268
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 271
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    return-void

    .line 271
    :catchall_1f
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onVideoComplete()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 208
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 210
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 213
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    return-void

    .line 213
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onVideoError()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 225
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 227
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 230
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-void

    .line 230
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
