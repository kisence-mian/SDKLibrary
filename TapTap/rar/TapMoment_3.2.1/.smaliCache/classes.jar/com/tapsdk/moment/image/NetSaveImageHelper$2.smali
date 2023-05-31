.class final Lcom/tapsdk/moment/image/NetSaveImageHelper$2;
.super Ljava/lang/Object;
.source "NetSaveImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/image/NetSaveImageHelper;->notifyResult(Lcom/tapsdk/moment/image/SaveImageCallback;ZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tapsdk/moment/image/SaveImageCallback;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/image/SaveImageCallback;ZLjava/io/File;)V
    .registers 4

    .line 84
    iput-object p1, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$2;->val$callback:Lcom/tapsdk/moment/image/SaveImageCallback;

    iput-boolean p2, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$2;->val$success:Z

    iput-object p3, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$2;->val$callback:Lcom/tapsdk/moment/image/SaveImageCallback;

    iget-boolean v1, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$2;->val$success:Z

    iget-object v2, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$2;->val$file:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/tapsdk/moment/image/SaveImageCallback;->callback(ZLjava/io/File;)V

    .line 88
    return-void
.end method
