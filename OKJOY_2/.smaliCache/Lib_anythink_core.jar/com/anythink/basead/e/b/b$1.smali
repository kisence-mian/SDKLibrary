.class final Lcom/anythink/basead/e/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/b/b;->b(Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/i;

.field final synthetic b:Lcom/anythink/basead/e/b/b$a;

.field final synthetic c:Lcom/anythink/basead/e/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/e/b/b;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V
    .registers 4

    .line 87
    iput-object p1, p0, Lcom/anythink/basead/e/b/b$1;->c:Lcom/anythink/basead/e/b/b;

    iput-object p2, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    iput-object p3, p0, Lcom/anythink/basead/e/b/b$1;->b:Lcom/anythink/basead/e/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 91
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 7

    .line 95
    nop

    .line 96
    nop

    .line 98
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_1e

    .line 99
    :try_start_c
    const-string v2, "sdk_updatetime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    iget-object v2, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    invoke-static {v2, v1}, Lcom/anythink/basead/e/b/c;->a(Lcom/anythink/core/common/d/i;Lorg/json/JSONObject;)Lcom/anythink/core/common/d/t;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    .line 103
    goto :goto_20

    .line 101
    :catch_1c
    move-exception v2

    goto :goto_20

    :catch_1e
    move-exception v1

    move-object v1, v0

    .line 105
    :goto_20
    const-string v2, "30001"

    if-eqz v0, :cond_f1

    .line 107
    invoke-virtual {v0}, Lcom/anythink/core/common/d/t;->v()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_6a

    .line 108
    iget-object p1, p0, Lcom/anythink/basead/e/b/b$1;->c:Lcom/anythink/basead/e/b/b;

    invoke-static {p1}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/basead/e/b/b;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lcom/anythink/core/common/d/t;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 109
    if-eqz p1, :cond_6a

    .line 110
    invoke-static {}, Lcom/anythink/basead/e/c/b;->a()Lcom/anythink/basead/e/c/b;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/basead/e/b/b$1;->c:Lcom/anythink/basead/e/b/b;

    invoke-static {v1}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/basead/e/b/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v4, v4, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/anythink/basead/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v4, v4, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {p1, v1, v3, v0, v4}, Lcom/anythink/basead/e/c/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)V

    .line 111
    iget-object p1, p0, Lcom/anythink/basead/e/b/b$1;->b:Lcom/anythink/basead/e/b/b$a;

    if-eqz p1, :cond_69

    .line 112
    const-string v0, "Application installed."

    invoke-static {v2, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/b/b$a;->a(Lcom/anythink/basead/c/f;)V

    .line 114
    :cond_69
    return-void

    .line 119
    :cond_6a
    invoke-virtual {v0}, Lcom/anythink/core/common/d/t;->v()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_b0

    .line 120
    iget-object p1, p0, Lcom/anythink/basead/e/b/b$1;->c:Lcom/anythink/basead/e/b/b;

    invoke-static {p1}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/basead/e/b/b;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lcom/anythink/core/common/d/t;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 121
    if-nez p1, :cond_b0

    .line 122
    invoke-static {}, Lcom/anythink/basead/e/c/b;->a()Lcom/anythink/basead/e/c/b;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/basead/e/b/b$1;->c:Lcom/anythink/basead/e/b/b;

    invoke-static {v1}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/basead/e/b/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v4, v4, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/anythink/basead/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v4, v4, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {p1, v1, v3, v0, v4}, Lcom/anythink/basead/e/c/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)V

    .line 124
    iget-object p1, p0, Lcom/anythink/basead/e/b/b$1;->b:Lcom/anythink/basead/e/b/b$a;

    if-eqz p1, :cond_af

    .line 125
    const-string v0, "Application not installed yet."

    invoke-static {v2, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/b/b$a;->a(Lcom/anythink/basead/c/f;)V

    .line 127
    :cond_af
    return-void

    .line 132
    :cond_b0
    iget-object p1, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    invoke-static {p1, v0}, Lcom/anythink/basead/e/c/a;->a(Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/u;)V

    .line 133
    const/16 p1, 0xa

    new-instance v2, Lcom/anythink/basead/c/h;

    iget-object v3, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 135
    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    iget-object p1, p0, Lcom/anythink/basead/e/b/b$1;->c:Lcom/anythink/basead/e/b/b;

    invoke-static {p1}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/basead/e/b/b;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    iget-object v2, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    invoke-static {v2}, Lcom/anythink/basead/e/b/a;->a(Lcom/anythink/core/common/d/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    sget-object v3, Lcom/anythink/core/common/b/e;->u:Ljava/lang/String;

    invoke-static {p1, v3, v2, v1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/anythink/basead/e/b/b$1;->b:Lcom/anythink/basead/e/b/b$a;

    if-eqz p1, :cond_e7

    .line 137
    invoke-interface {p1}, Lcom/anythink/basead/e/b/b$a;->a()V

    .line 139
    :cond_e7
    iget-object p1, p0, Lcom/anythink/basead/e/b/b$1;->c:Lcom/anythink/basead/e/b/b;

    iget-object v1, p0, Lcom/anythink/basead/e/b/b$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v2, p0, Lcom/anythink/basead/e/b/b$1;->b:Lcom/anythink/basead/e/b/b$a;

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/basead/e/b/b;Lcom/anythink/core/common/d/t;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V

    return-void

    .line 141
    :cond_f1
    iget-object v0, p0, Lcom/anythink/basead/e/b/b$1;->b:Lcom/anythink/basead/e/b/b$a;

    if-eqz v0, :cond_105

    .line 142
    if-eqz p1, :cond_fc

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_fe

    :cond_fc
    const-string p1, "No Ad Return."

    :goto_fe
    invoke-static {v2, p1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/b/b$a;->a(Lcom/anythink/basead/c/f;)V

    .line 146
    :cond_105
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 150
    iget-object p2, p0, Lcom/anythink/basead/e/b/b$1;->b:Lcom/anythink/basead/e/b/b$a;

    if-eqz p2, :cond_d

    .line 151
    const-string v0, "30001"

    invoke-static {v0, p1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/anythink/basead/e/b/b$a;->a(Lcom/anythink/basead/c/f;)V

    .line 153
    :cond_d
    return-void
.end method

.method public final b()V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/anythink/basead/e/b/b$1;->b:Lcom/anythink/basead/e/b/b$a;

    if-eqz v0, :cond_f

    .line 158
    const-string v1, "30001"

    const-string v2, "Cancel Request."

    invoke-static {v1, v2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/b/b$a;->a(Lcom/anythink/basead/c/f;)V

    .line 160
    :cond_f
    return-void
.end method
