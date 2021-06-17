.class public final Lcom/efs/sdk/base/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:B

.field public h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field public l:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/efs/sdk/base/a/a/c;->l:J

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/a/c;
    .registers 2

    .line 86
    new-instance v0, Lcom/efs/sdk/base/a/a/c;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/a/c;-><init>()V

    .line 87
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 1113
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 87
    iput-object v1, v0, Lcom/efs/sdk/base/a/a/c;->a:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 1121
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->b:Ljava/lang/String;

    .line 88
    iput-object v1, v0, Lcom/efs/sdk/base/a/a/c;->b:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 1129
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->h:Ljava/lang/String;

    .line 89
    iput-object v1, v0, Lcom/efs/sdk/base/a/a/c;->k:Ljava/lang/String;

    .line 90
    const-string v1, "1.3.3.umeng"

    iput-object v1, v0, Lcom/efs/sdk/base/a/a/c;->j:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/efs/sdk/base/a/h/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/efs/sdk/base/a/a/c;->c:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v1

    .line 1155
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 2103
    iget v1, v1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 92
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/efs/sdk/base/a/a/c;->i:Ljava/lang/String;

    .line 93
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 9

    .line 103
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/efs/sdk/base/a/a/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/efs/sdk/base/a/a/c;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/efs/sdk/base/a/h/c/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/c/b;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 112
    iget-object v3, p0, Lcom/efs/sdk/base/a/a/c;->a:Ljava/lang/String;

    const-string v4, "app"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v3, "sd"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/efs/sdk/base/a/a/c;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 117
    iget-object v1, p0, Lcom/efs/sdk/base/a/a/c;->d:Ljava/lang/String;

    const-string v3, "cp"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_4b
    iget-byte v1, p0, Lcom/efs/sdk/base/a/a/c;->g:B

    if-eqz v1, :cond_99

    .line 122
    iget v1, p0, Lcom/efs/sdk/base/a/a/c;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "de"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/efs/sdk/base/a/a/c;->h:Ljava/lang/String;

    const-string v3, "type"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/efs/sdk/base/a/a/c;->f:Ljava/lang/String;

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 126
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v3

    .line 127
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/16 v3, 0x2710

    invoke-virtual {v7, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "%d%04d"

    invoke-static {v1, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_94
    const-string v3, "seq"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_99
    iget-object v1, p0, Lcom/efs/sdk/base/a/a/c;->i:Ljava/lang/String;

    const-string v3, "cver"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "os"

    const-string v3, "android"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/efs/sdk/base/a/a/c;->i:Ljava/lang/String;

    const-string v3, "sver"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "tm"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/efs/sdk/base/a/a/c;->c:Ljava/lang/String;

    const-string v1, "ver"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    goto :goto_cc

    .line 146
    :cond_108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/efs/sdk/base/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v2, "sign="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
