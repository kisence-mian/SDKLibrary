.class final Lcom/bytedance/sdk/openadsdk/h/i$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    .line 152
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->b:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->c:Ljava/lang/String;

    .line 154
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->d:I

    .line 155
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->e:I

    .line 156
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->f:Ljava/lang/String;

    .line 157
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->g:Ljava/util/List;

    .line 158
    return-void
.end method

.method static a(Lcom/bytedance/sdk/openadsdk/h/i$c;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/h/i$a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/h/i$c;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/h/i$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/i$d;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/i$c;->b:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 162
    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 163
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/i$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path format error, path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/i$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/i$d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_26
    const/4 v1, 0x0

    .line 167
    const/4 v2, 0x0

    .line 168
    const/4 v3, 0x0

    .line 169
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/i$c;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 173
    array-length v5, v4

    const/4 v0, 0x0

    :goto_3e
    if-ge v0, v5, :cond_a2

    aget-object v6, v4, v0

    .line 174
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 175
    array-length v8, v6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4f

    .line 173
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 179
    :cond_4f
    const-string v8, "rk"

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 180
    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    .line 181
    :cond_62
    const-string v8, "k"

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 182
    const/4 v3, 0x1

    aget-object v3, v6, v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    .line 183
    :cond_75
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 184
    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 185
    :cond_8b
    const-string v8, "f"

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 186
    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/h/g/d;->b(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4c

    .line 188
    const/4 v1, 0x1

    goto :goto_4c

    .line 193
    :cond_a2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 194
    :cond_ae
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/i$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rawKey or key is empty, path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/i$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/i$d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_c9
    const/4 v6, 0x0

    .line 198
    const/4 v5, 0x0

    .line 199
    const/4 v4, 0x0

    .line 201
    if-eqz p1, :cond_224

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d2
    :goto_d2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 203
    if-eqz v0, :cond_d2

    .line 207
    const-string v9, "Range"

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_220

    .line 208
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    const-string v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 209
    const/4 v9, -0x1

    if-ne v4, v9, :cond_110

    .line 210
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/i$d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range format error, Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/i$d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_110
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 214
    const-string v10, "bytes"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13e

    .line 215
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/i$d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range format error, Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/i$d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_13e
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_169

    .line 220
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/i$d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range format error, Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/i$d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_169
    const-string v9, "-"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 224
    const/4 v10, -0x1

    if-ne v9, v10, :cond_18d

    .line 225
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/i$d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range format error, Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/i$d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_18d
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 229
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 232
    :try_start_1a0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1aa

    .line 233
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 236
    :cond_1aa
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1ed

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 239
    if-le v6, v4, :cond_1ee

    .line 240
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/i$d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range format error, Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/i$d;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1d1
    .catch Ljava/lang/NumberFormatException; {:try_start_1a0 .. :try_end_1d1} :catch_1d1

    .line 243
    :catch_1d1
    move-exception v1

    .line 244
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/i$d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range format error, Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/i$d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1ed
    move v4, v5

    .line 247
    :cond_1ee
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    move v5, v6

    :goto_1f1
    move v6, v5

    move v5, v4

    move-object v4, v0

    .line 267
    goto/16 :goto_d2

    :cond_1f6
    move-object v11, v4

    move v4, v6

    move-object v6, v11

    .line 270
    :goto_1f9
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 271
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/i$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no url found: path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/i$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/i$d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_21a
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/i$a;

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/h/i$a;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_220
    move-object v0, v4

    move v4, v5

    move v5, v6

    goto :goto_1f1

    :cond_224
    move-object v11, v4

    move v4, v6

    move-object v6, v11

    goto :goto_1f9
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extra{flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/i$a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
