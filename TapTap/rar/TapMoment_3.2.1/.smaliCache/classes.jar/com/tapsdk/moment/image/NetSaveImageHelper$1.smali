.class final Lcom/tapsdk/moment/image/NetSaveImageHelper$1;
.super Ljava/lang/Object;
.source "NetSaveImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/image/NetSaveImageHelper;->download(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tapsdk/moment/image/SaveImageCallback;

.field final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V
    .registers 3

    .line 30
    iput-object p1, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$1;->val$urlStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$1;->val$callback:Lcom/tapsdk/moment/image/SaveImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$1;->val$urlStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapsdk/moment/image/NetSaveImageHelper$1;->val$callback:Lcom/tapsdk/moment/image/SaveImageCallback;

    # invokes: Lcom/tapsdk/moment/image/NetSaveImageHelper;->saveImageToFile(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V
    invoke-static {v0, v1}, Lcom/tapsdk/moment/image/NetSaveImageHelper;->access$000(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Lcom/tapsdk/moment/NetworkException; {:try_start_0 .. :try_end_7} :catch_8

    .line 37
    goto :goto_c

    .line 35
    :catch_8
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method
