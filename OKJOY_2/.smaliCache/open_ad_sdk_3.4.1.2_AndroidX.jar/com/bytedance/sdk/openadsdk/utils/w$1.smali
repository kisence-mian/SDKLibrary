.class Lcom/bytedance/sdk/openadsdk/utils/w$1;
.super Ljava/lang/Object;
.source "MimeDetector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/w;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/utils/w;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/w;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/w$1;->a:Lcom/bytedance/sdk/openadsdk/utils/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    nop

    .line 210
    nop

    .line 213
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/w$1;->a:Lcom/bytedance/sdk/openadsdk/utils/w;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Lcom/bytedance/sdk/openadsdk/utils/w;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "tt_mime_type.pro"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_47

    .line 215
    :try_start_18
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_43

    .line 218
    :cond_22
    :goto_22
    :try_start_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 220
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_41

    goto :goto_22

    .line 224
    :cond_32
    nop

    .line 228
    if-eqz v2, :cond_3a

    .line 230
    :try_start_35
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    .line 232
    goto :goto_3a

    .line 231
    :catchall_39
    move-exception v0

    .line 234
    :cond_3a
    :goto_3a
    nop

    .line 236
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    .line 238
    goto :goto_40

    .line 237
    :catchall_3f
    move-exception v0

    .line 224
    :goto_40
    return-object v1

    .line 225
    :catchall_41
    move-exception v0

    goto :goto_45

    :catchall_43
    move-exception v1

    move-object v3, v0

    :goto_45
    move-object v0, v2

    goto :goto_49

    :catchall_47
    move-exception v1

    move-object v3, v0

    .line 226
    :goto_49
    :try_start_49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_5c

    .line 228
    if-eqz v0, :cond_54

    .line 230
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    .line 232
    goto :goto_54

    .line 231
    :catchall_53
    move-exception v0

    .line 234
    :cond_54
    :goto_54
    if-eqz v3, :cond_5b

    .line 236
    :try_start_56
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    .line 238
    goto :goto_5b

    .line 237
    :catchall_5a
    move-exception v0

    .line 226
    :cond_5b
    :goto_5b
    return-object v1

    .line 228
    :catchall_5c
    move-exception v1

    if-eqz v0, :cond_64

    .line 230
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    .line 232
    goto :goto_64

    .line 231
    :catchall_63
    move-exception v0

    .line 234
    :cond_64
    :goto_64
    if-eqz v3, :cond_6b

    .line 236
    :try_start_66
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    .line 238
    goto :goto_6b

    .line 237
    :catchall_6a
    move-exception v0

    .line 240
    :cond_6b
    :goto_6b
    throw v1
.end method

.method public synthetic run()Ljava/lang/Object;
    .registers 2

    .line 206
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/w$1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
