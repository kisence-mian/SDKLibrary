.class Lcom/bytedance/sdk/openadsdk/utils/v$1;
.super Ljava/lang/Object;
.source "MimeDetector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/v;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/utils/v;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/v;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/v$1;->a:Lcom/bytedance/sdk/openadsdk/utils/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    .line 213
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/v$1;->a:Lcom/bytedance/sdk/openadsdk/utils/v;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/v;->a(Lcom/bytedance/sdk/openadsdk/utils/v;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "tt_mime_type.pro"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_6e
    .catchall {:try_start_1 .. :try_end_15} :catchall_4e

    move-result-object v3

    .line 215
    :try_start_16
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_20} :catch_71
    .catchall {:try_start_16 .. :try_end_20} :catchall_65

    .line 218
    :cond_20
    :goto_20
    :try_start_20
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 219
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 220
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2f} :catch_30
    .catchall {:try_start_20 .. :try_end_2f} :catchall_67

    goto :goto_20

    .line 225
    :catch_30
    move-exception v0

    move-object v2, v3

    .line 226
    :goto_32
    :try_start_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_6a

    move-result-object v0

    .line 228
    if-eqz v2, :cond_3b

    .line 230
    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_5d

    .line 234
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_40

    .line 236
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_5f

    .line 226
    :cond_40
    :goto_40
    return-object v0

    .line 228
    :cond_41
    if-eqz v3, :cond_46

    .line 230
    :try_start_43
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_5b

    .line 234
    :cond_46
    :goto_46
    if-eqz v1, :cond_40

    .line 236
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_40

    .line 237
    :catch_4c
    move-exception v1

    goto :goto_40

    .line 228
    :catchall_4e
    move-exception v0

    move-object v3, v2

    :goto_50
    if-eqz v3, :cond_55

    .line 230
    :try_start_52
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_61

    .line 234
    :cond_55
    :goto_55
    if-eqz v2, :cond_5a

    .line 236
    :try_start_57
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_63

    .line 238
    :cond_5a
    :goto_5a
    throw v0

    .line 231
    :catch_5b
    move-exception v2

    goto :goto_46

    :catch_5d
    move-exception v2

    goto :goto_3b

    .line 237
    :catch_5f
    move-exception v1

    goto :goto_40

    .line 231
    :catch_61
    move-exception v1

    goto :goto_55

    .line 237
    :catch_63
    move-exception v1

    goto :goto_5a

    .line 228
    :catchall_65
    move-exception v0

    goto :goto_50

    :catchall_67
    move-exception v0

    move-object v2, v1

    goto :goto_50

    :catchall_6a
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_50

    .line 225
    :catch_6e
    move-exception v0

    move-object v1, v2

    goto :goto_32

    :catch_71
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_32
.end method

.method public synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/v$1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
