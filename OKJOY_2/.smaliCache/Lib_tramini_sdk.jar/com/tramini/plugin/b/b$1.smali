.class final Lcom/tramini/plugin/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/a/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/d/c;

.field final synthetic b:Lcom/tramini/plugin/b/b;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/b/b;Lcom/tramini/plugin/a/d/c;)V
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    iput-object p2, p0, Lcom/tramini/plugin/b/b$1;->a:Lcom/tramini/plugin/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;Z)Z

    .line 124
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .registers 8

    .line 128
    iget-object p1, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;Z)Z

    .line 129
    if-eqz p2, :cond_60

    .line 130
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object p2, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    invoke-static {p2}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;)Landroid/content/Context;

    move-result-object p2

    const-string v1, "tramini"

    const-string v2, "P_SY"

    invoke-static {p2, v1, v2, p1}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    invoke-static {p2}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;)Landroid/content/Context;

    move-result-object p2

    const-string v2, "P_UD_TE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1029
    if-eqz p2, :cond_39

    .line 1031
    :try_start_27
    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1032
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 1033
    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1034
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_38
    .catch Ljava/lang/Error; {:try_start_27 .. :try_end_35} :catch_36

    goto :goto_39

    .line 1036
    :catch_36
    move-exception p2

    goto :goto_39

    .line 1035
    :catch_38
    move-exception p2

    .line 135
    :cond_39
    :goto_39
    invoke-static {p1}, Lcom/tramini/plugin/a/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/tramini/plugin/b/a;->a(Ljava/lang/String;)Lcom/tramini/plugin/b/a;

    move-result-object p1

    .line 139
    if-eqz p1, :cond_60

    .line 140
    invoke-static {p1}, Lcom/tramini/plugin/a/g/g;->a(Lcom/tramini/plugin/b/a;)Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tramini/plugin/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/tramini/plugin/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/b/a;)V

    .line 144
    iget-object p2, p0, Lcom/tramini/plugin/b/b$1;->a:Lcom/tramini/plugin/a/d/c;

    if-eqz p2, :cond_60

    .line 145
    invoke-interface {p2, p1}, Lcom/tramini/plugin/a/d/c;->a(Lcom/tramini/plugin/b/a;)V

    .line 151
    :cond_60
    return-void
.end method

.method public final b()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;Z)Z

    .line 156
    return-void
.end method
