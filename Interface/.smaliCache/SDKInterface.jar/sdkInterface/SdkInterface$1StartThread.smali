.class LsdkInterface/SdkInterface$1StartThread;
.super Ljava/lang/Object;
.source "SdkInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LsdkInterface/SdkInterface;->InitActResultRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartThread"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 305
    new-instance v0, LsdkInterface/tool/ActResultRequest;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, LsdkInterface/tool/ActResultRequest;-><init>(Landroid/app/Activity;)V

    sput-object v0, LsdkInterface/SdkInterface;->actResultRequest:LsdkInterface/tool/ActResultRequest;

    .line 306
    return-void
.end method
