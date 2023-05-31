.class Lcom/bytedance/sdk/openadsdk/j/b$a;
.super Landroid/os/AsyncTask;
.source "TrackAdUrlImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/j/b;

.field private final b:Lcom/bytedance/sdk/openadsdk/j/e;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/j/b;Lcom/bytedance/sdk/openadsdk/j/e;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 105
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->a:Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    .line 107
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->c:Ljava/lang/String;

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/j/b;Lcom/bytedance/sdk/openadsdk/j/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/b$1;)V
    .registers 5

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/j/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/j/b;Lcom/bytedance/sdk/openadsdk/j/e;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 112
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 114
    const-string v0, "{TS}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "__TS__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 115
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 116
    const-string v2, "{TS}"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string v3, "__TS__"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 119
    :cond_2e
    const-string v0, "{UID}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "__UID__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_3e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 120
    const-string v0, "{UID}"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "__UID__"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/x;->a()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "{OAID}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "__OAID__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7c

    :cond_6a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 126
    const-string v1, "{OAID}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v2, "__OAID__"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_7c
    return-object p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 217
    :cond_7
    :goto_7
    return-object v1

    .line 158
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/j/b$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->d()I

    move-result v0

    if-nez v0, :cond_33

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->a:Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Lcom/bytedance/sdk/openadsdk/j/b;)Lcom/bytedance/sdk/openadsdk/j/f;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/j/f;->c(Lcom/bytedance/sdk/openadsdk/j/e;)V

    goto :goto_7

    .line 211
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->a:Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Lcom/bytedance/sdk/openadsdk/j/b;)Lcom/bytedance/sdk/openadsdk/j/f;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/j/f;->b(Lcom/bytedance/sdk/openadsdk/j/e;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_dd

    .line 165
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->d()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/b$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 167
    :try_start_41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->d()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_55

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->a:Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Lcom/bytedance/sdk/openadsdk/j/b;)Lcom/bytedance/sdk/openadsdk/j/f;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/j/f;->a(Lcom/bytedance/sdk/openadsdk/j/e;)V

    .line 170
    :cond_55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->a:Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/j/b$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 176
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/j/b$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_77
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v2

    .line 180
    new-instance v3, Lcom/bytedance/sdk/adnet/b/j;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v2}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 181
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/adnet/b/j;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->a:Lcom/bytedance/sdk/openadsdk/j/b;

    .line 182
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/j/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_a0} :catch_dd

    .line 186
    :try_start_a0
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/n;
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_e0

    move-result-object v0

    .line 191
    :goto_a4
    if-eqz v0, :cond_e3

    :try_start_a6
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/n;->a()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->a:Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Lcom/bytedance/sdk/openadsdk/j/b;)Lcom/bytedance/sdk/openadsdk/j/f;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/j/f;->c(Lcom/bytedance/sdk/openadsdk/j/e;)V

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    const-string v0, "trackurl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 214
    :catch_dd
    move-exception v0

    goto/16 :goto_33

    .line 187
    :catch_e0
    move-exception v0

    move-object v0, v1

    goto :goto_a4

    .line 199
    :cond_e3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 200
    const-string v0, "trackurl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/j/e;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/j/e;->a(I)V

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->d()I

    move-result v0

    if-nez v0, :cond_28

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->a:Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Lcom/bytedance/sdk/openadsdk/j/b;)Lcom/bytedance/sdk/openadsdk/j/f;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/j/f;->c(Lcom/bytedance/sdk/openadsdk/j/e;)V

    .line 206
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    const-string v0, "trackurl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track fail and delete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/j/b$a;->b:Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_14b} :catch_dd

    goto/16 :goto_7
.end method

.method a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 138
    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 141
    :try_start_6
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 142
    const-string v1, "[ss_random]"

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string v0, "[ss_timestamp]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_28

    move-result-object p1

    .line 148
    :cond_27
    :goto_27
    return-object p1

    .line 144
    :catch_28
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 98
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/j/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
