.class Lcom/bytedance/sdk/openadsdk/k/b$a;
.super Landroid/os/AsyncTask;
.source "TrackAdUrlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/k/b;

.field private final b:Lcom/bytedance/sdk/openadsdk/k/e;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/k/b;Lcom/bytedance/sdk/openadsdk/k/e;Ljava/lang/String;)V
    .registers 4

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Lcom/bytedance/sdk/openadsdk/k/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    .line 108
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->c:Ljava/lang/String;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/k/b;Lcom/bytedance/sdk/openadsdk/k/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/b$1;)V
    .registers 5

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/k/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/k/b;Lcom/bytedance/sdk/openadsdk/k/e;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 113
    nop

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 115
    const-string v0, "{TS}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "__TS__"

    if-nez v1, :cond_17

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 116
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 117
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 120
    :cond_2b
    const-string v0, "{UID}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "__UID__"

    if-nez v1, :cond_3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    :cond_3b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 121
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 125
    :cond_4f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "{OAID}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "__OAID__"

    if-nez v2, :cond_63

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_71

    :cond_63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 127
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_71
    return-object p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 156
    return-object v0

    .line 159
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 160
    return-object v0

    .line 162
    :cond_15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/e;->d()I

    move-result p1

    if-nez p1, :cond_29

    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Lcom/bytedance/sdk/openadsdk/k/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Lcom/bytedance/sdk/openadsdk/k/b;)Lcom/bytedance/sdk/openadsdk/k/f;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/k/f;->c(Lcom/bytedance/sdk/openadsdk/k/e;)V

    .line 164
    return-object v0

    .line 166
    :cond_29
    :goto_29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/e;->d()I

    move-result p1

    if-lez p1, :cond_14a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b$a;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_14a

    .line 168
    :try_start_37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/e;->d()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4b

    .line 169
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Lcom/bytedance/sdk/openadsdk/k/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Lcom/bytedance/sdk/openadsdk/k/b;)Lcom/bytedance/sdk/openadsdk/k/f;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/k/f;->a(Lcom/bytedance/sdk/openadsdk/k/e;)V

    .line 171
    :cond_4b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Lcom/bytedance/sdk/openadsdk/k/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/b;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 173
    goto/16 :goto_14a

    .line 175
    :cond_59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/b$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/e;->c()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 177
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/b$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    :cond_6f
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/bytedance/sdk/adnet/b/j;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v1}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 182
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 v3, 0x2710

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/adnet/b/j;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Lcom/bytedance/sdk/openadsdk/k/b;

    .line 183
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V
    :try_end_98
    .catchall {:try_start_37 .. :try_end_98} :catchall_147

    .line 185
    nop

    .line 187
    :try_start_99
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_9e

    .line 189
    goto :goto_a0

    .line 188
    :catchall_9e
    move-exception p1

    move-object p1, v0

    .line 192
    :goto_a0
    const-string v1, "trackurl"

    if-eqz p1, :cond_d8

    :try_start_a4
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result p1

    if-eqz p1, :cond_d8

    .line 194
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Lcom/bytedance/sdk/openadsdk/k/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Lcom/bytedance/sdk/openadsdk/k/b;)Lcom/bytedance/sdk/openadsdk/k/f;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/k/f;->c(Lcom/bytedance/sdk/openadsdk/k/e;)V

    .line 195
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track success : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_d7
    goto :goto_14a

    .line 200
    :cond_d8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result p1

    if-eqz p1, :cond_fa

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track fail : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_fa
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/e;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/k/e;->a(I)V

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/e;->d()I

    move-result p1

    if-nez p1, :cond_13b

    .line 206
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Lcom/bytedance/sdk/openadsdk/k/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Lcom/bytedance/sdk/openadsdk/k/b;)Lcom/bytedance/sdk/openadsdk/k/f;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/k/f;->c(Lcom/bytedance/sdk/openadsdk/k/e;)V

    .line 207
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result p1

    if-eqz p1, :cond_13a

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track fail and delete : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_13a
    goto :goto_14a

    .line 212
    :cond_13b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Lcom/bytedance/sdk/openadsdk/k/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Lcom/bytedance/sdk/openadsdk/k/b;)Lcom/bytedance/sdk/openadsdk/k/f;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Lcom/bytedance/sdk/openadsdk/k/e;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/k/f;->b(Lcom/bytedance/sdk/openadsdk/k/e;)V
    :try_end_146
    .catchall {:try_start_a4 .. :try_end_146} :catchall_147

    goto :goto_148

    .line 215
    :catchall_147
    move-exception p1

    .line 216
    :goto_148
    goto/16 :goto_29

    .line 218
    :cond_14a
    :goto_14a
    return-object v0
.end method

.method a(Ljava/lang/String;)Z
    .registers 3

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_16
    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 139
    nop

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 142
    :try_start_7
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 143
    const-string v1, "[ss_random]"

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 144
    const-string v0, "[ss_timestamp]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_29

    .line 147
    goto :goto_2d

    .line 145
    :catch_29
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    :cond_2d
    :goto_2d
    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 99
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
