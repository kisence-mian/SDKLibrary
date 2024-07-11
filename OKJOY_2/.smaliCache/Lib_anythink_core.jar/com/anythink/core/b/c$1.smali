.class final Lcom/anythink/core/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/c;->a(Lcom/anythink/core/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/anythink/core/b/c;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/c;J)V
    .registers 4

    .line 78
    iput-object p1, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    iput-wide p2, p0, Lcom/anythink/core/b/c$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 82
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/b/c$1;->a:J

    sub-long/2addr v0, v2

    .line 87
    nop

    .line 1040
    nop

    .line 1227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    instance-of v3, p1, Lorg/json/JSONArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_2a

    .line 1229
    check-cast p1, Lorg/json/JSONArray;

    .line 1230
    move v3, v4

    :goto_16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2a

    .line 1231
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/common/d/l;->a(Ljava/lang/String;)Lcom/anythink/core/common/d/l;

    move-result-object v5

    .line 1232
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1236
    :cond_2a
    nop

    .line 88
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_37

    .line 89
    iget-object p1, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    invoke-static {p1, v4}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/b/c;Z)V

    .line 90
    return-void

    .line 93
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/d/l;

    .line 96
    iget-object v3, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    iget-object v3, v3, Lcom/anythink/core/b/c;->l:Lcom/anythink/core/common/d/a;

    iget v3, v3, Lcom/anythink/core/common/d/a;->d:I

    const-string v4, "4"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_60

    .line 97
    iget v3, v2, Lcom/anythink/core/common/d/l;->d:I

    packed-switch v3, :pswitch_data_94

    goto :goto_60

    .line 101
    :pswitch_5b
    iget-object v3, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    invoke-static {v3, v2}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/b/c;Lcom/anythink/core/common/d/l;)V

    .line 106
    :cond_60
    :goto_60
    iget-object v3, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    iget-object v3, v3, Lcom/anythink/core/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/anythink/core/common/d/l;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/anythink/core/common/d/l;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 108
    iget-object v4, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/k;J)V

    .line 109
    goto :goto_3b

    .line 111
    :cond_85
    iget-object p1, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    iget-object p1, p1, Lcom/anythink/core/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 112
    iget-object p1, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/b/c;Z)V

    .line 114
    return-void

    nop

    :pswitch_data_94
    .packed-switch 0x42
        :pswitch_5b
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 118
    iget-object p1, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/b/c;Z)V

    .line 119
    return-void
.end method

.method public final b()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/anythink/core/b/c$1;->b:Lcom/anythink/core/b/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/b/c;Z)V

    .line 124
    return-void
.end method
