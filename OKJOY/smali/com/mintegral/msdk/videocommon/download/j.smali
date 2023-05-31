.class public final Lcom/mintegral/msdk/videocommon/download/j;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/videocommon/download/j$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "ResourceManager"

    sput-object v0, Lcom/mintegral/msdk/videocommon/download/j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    sget-object v0, Lcom/mintegral/msdk/base/common/b/c;->e:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/j;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/mintegral/msdk/videocommon/download/j;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/j$a;->a:Lcom/mintegral/msdk/videocommon/download/j;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/j;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p2, v0}, Lcom/mintegral/msdk/base/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 140
    invoke-static {p3}, Lcom/mintegral/msdk/base/utils/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_2b
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 154
    :try_start_0
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 159
    const-string v2, "foldername"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 160
    sget-object v2, Lcom/mintegral/msdk/videocommon/download/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check zip \u4e0b\u8f7d\u60c5\u51b5\uff1aurl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v2, Lcom/mintegral/msdk/videocommon/download/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check zip \u4e0b\u8f7d\u60c5\u51b5\uff1aindexHtml:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz v0, :cond_d3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d3

    .line 163
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d3

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 167
    const-string v0, ""
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_93} :catch_cb

    .line 169
    :try_start_93
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9e} :catch_d5

    move-result-object v0

    .line 173
    :goto_9f
    :try_start_9f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_b4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_c7
    return-object v0

    .line 176
    :cond_c8
    const-string v0, ""
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ca} :catch_cb

    goto :goto_b4

    .line 182
    :catch_cb
    move-exception v0

    .line 183
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_d3

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    :cond_d3
    const/4 v0, 0x0

    goto :goto_c7

    :catch_d5
    move-exception v2

    goto :goto_9f
.end method

.method public final a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 8

    .prologue
    .line 90
    const-string v1, "unknow exception "

    .line 93
    if-eqz p2, :cond_7a

    :try_start_4
    array-length v0, p2

    if-lez v0, :cond_7a

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {p2, v3}, Lcom/mintegral/msdk/base/utils/e;->a([BLjava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 99
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    const-string v4, "nc"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_47

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7b

    .line 103
    :cond_47
    const-string v4, "md5filename"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_8d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8d

    .line 105
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 108
    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 110
    invoke-direct {p0, p1, v2, v3}, Lcom/mintegral/msdk/videocommon/download/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_70
    move-object v1, v0

    .line 119
    :cond_71
    :goto_71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 120
    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/e;->b(Ljava/io/File;)Ljava/lang/String;

    .line 129
    :cond_7a
    :goto_7a
    return-object v1

    .line 115
    :cond_7b
    invoke-direct {p0, p1, v2, v3}, Lcom/mintegral/msdk/videocommon/download/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7e} :catch_80

    move-result-object v1

    goto :goto_71

    .line 123
    :catch_80
    move-exception v0

    .line 124
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_88

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :cond_88
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_7a

    :cond_8d
    move-object v0, v1

    goto :goto_70
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2021
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/f$a;->a:Lcom/mintegral/msdk/videocommon/download/f;

    .line 59
    new-instance v1, Lcom/mintegral/msdk/videocommon/download/j$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videocommon/download/j$1;-><init>(Lcom/mintegral/msdk/videocommon/download/j;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/f;->a(Lcom/mintegral/msdk/base/common/f/a;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 81
    :cond_12
    :goto_12
    return-void

    .line 76
    :catch_13
    move-exception v0

    .line 77
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method
