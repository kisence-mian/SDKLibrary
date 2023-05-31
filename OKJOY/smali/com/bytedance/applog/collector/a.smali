.class public Lcom/bytedance/applog/collector/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static a:I

.field private static b:Lcom/bytedance/applog/d/h;

.field private static c:Lcom/bytedance/applog/d/h;

.field private static d:J

.field private static e:Ljava/lang/String;

.field private static f:J

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:Ljava/lang/Object;

.field private static j:Ljava/lang/Object;

.field private static final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final k:Lcom/bytedance/applog/IPicker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/bytedance/applog/collector/a;->a:I

    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/bytedance/applog/collector/a;->h:I

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/bytedance/applog/collector/a;->l:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/applog/IPicker;)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/applog/collector/a;->k:Lcom/bytedance/applog/IPicker;

    .line 53
    return-void
.end method

.method public static a(Lcom/bytedance/applog/d/h;J)Lcom/bytedance/applog/d/h;
    .registers 10

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/bytedance/applog/d/h;->g()Lcom/bytedance/applog/d/a;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/h;

    .line 156
    iput-wide p1, v0, Lcom/bytedance/applog/d/h;->a:J

    .line 157
    iget-wide v2, p0, Lcom/bytedance/applog/d/h;->a:J

    sub-long v2, p1, v2

    .line 158
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_18

    .line 159
    iput-wide v2, v0, Lcom/bytedance/applog/d/h;->h:J

    .line 163
    :goto_14
    invoke-static {v0}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    .line 164
    return-object v0

    .line 161
    :cond_18
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/applog/d/h;
    .registers 9

    .prologue
    .line 141
    new-instance v0, Lcom/bytedance/applog/d/h;

    invoke-direct {v0}, Lcom/bytedance/applog/d/h;-><init>()V

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/applog/d/h;->j:Ljava/lang/String;

    .line 147
    :goto_24
    iput-wide p2, v0, Lcom/bytedance/applog/d/h;->a:J

    .line 148
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/bytedance/applog/d/h;->h:J

    .line 149
    if-eqz p4, :cond_35

    :goto_2c
    iput-object p4, v0, Lcom/bytedance/applog/d/h;->i:Ljava/lang/String;

    .line 150
    invoke-static {v0}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    .line 151
    return-object v0

    .line 145
    :cond_32
    iput-object p0, v0, Lcom/bytedance/applog/d/h;->j:Ljava/lang/String;

    goto :goto_24

    .line 149
    :cond_35
    const-string p4, ""

    goto :goto_2c
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 1

    .prologue
    .line 108
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    sget-object v0, Lcom/bytedance/applog/collector/a;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 199
    sget-object v0, Lcom/bytedance/applog/collector/a;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 124
    sget-object v0, Lcom/bytedance/applog/collector/a;->c:Lcom/bytedance/applog/d/h;

    if-eqz v0, :cond_a

    .line 125
    sget-object v0, Lcom/bytedance/applog/collector/a;->j:Ljava/lang/Object;

    invoke-static {v0}, Lcom/bytedance/applog/collector/a;->a(Ljava/lang/Object;)V

    .line 128
    :cond_a
    sget-object v0, Lcom/bytedance/applog/collector/a;->b:Lcom/bytedance/applog/d/h;

    if-eqz v0, :cond_2e

    .line 129
    sget-object v0, Lcom/bytedance/applog/collector/a;->b:Lcom/bytedance/applog/d/h;

    iget-object v0, v0, Lcom/bytedance/applog/d/h;->j:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/applog/collector/a;->e:Ljava/lang/String;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/applog/collector/a;->d:J

    .line 131
    sget-object v0, Lcom/bytedance/applog/collector/a;->b:Lcom/bytedance/applog/d/h;

    sget-wide v2, Lcom/bytedance/applog/collector/a;->d:J

    invoke-static {v0, v2, v3}, Lcom/bytedance/applog/collector/a;->a(Lcom/bytedance/applog/d/h;J)Lcom/bytedance/applog/d/h;

    .line 132
    sput-object v4, Lcom/bytedance/applog/collector/a;->b:Lcom/bytedance/applog/d/h;

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 134
    const/4 v0, -0x1

    sput v0, Lcom/bytedance/applog/collector/a;->h:I

    .line 135
    sput-object v4, Lcom/bytedance/applog/collector/a;->i:Ljava/lang/Object;

    .line 138
    :cond_2e
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/bytedance/applog/collector/a;->e:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/bytedance/applog/collector/a;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/applog/d/h;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/collector/a;->b:Lcom/bytedance/applog/d/h;

    .line 115
    sget-object v1, Lcom/bytedance/applog/collector/a;->b:Lcom/bytedance/applog/d/h;

    sget-object v0, Lcom/bytedance/applog/collector/a;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    :goto_29
    iput v0, v1, Lcom/bytedance/applog/d/h;->k:I

    .line 116
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_41

    .line 117
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/bytedance/applog/collector/a;->h:I

    .line 118
    sput-object p1, Lcom/bytedance/applog/collector/a;->i:Ljava/lang/Object;

    .line 120
    :cond_41
    return-void

    .line 115
    :cond_42
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 169
    sget v0, Lcom/bytedance/applog/collector/a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bytedance/applog/collector/a;->a:I

    .line 170
    sget v0, Lcom/bytedance/applog/collector/a;->a:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/bytedance/applog/collector/a;->k:Lcom/bytedance/applog/IPicker;

    if-eqz v0, :cond_14

    .line 171
    iget-object v0, p0, Lcom/bytedance/applog/collector/a;->k:Lcom/bytedance/applog/IPicker;

    invoke-interface {v0, v1}, Lcom/bytedance/applog/IPicker;->show(Z)V

    .line 173
    :cond_14
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 177
    sget-object v0, Lcom/bytedance/applog/collector/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 178
    sget v0, Lcom/bytedance/applog/collector/a;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/bytedance/applog/collector/a;->a:I

    .line 179
    sget v0, Lcom/bytedance/applog/collector/a;->a:I

    if-gtz v0, :cond_23

    .line 180
    sput-object v1, Lcom/bytedance/applog/collector/a;->e:Ljava/lang/String;

    .line 181
    sput-object v1, Lcom/bytedance/applog/collector/a;->g:Ljava/lang/String;

    .line 182
    sput-wide v2, Lcom/bytedance/applog/collector/a;->f:J

    .line 183
    sput-wide v2, Lcom/bytedance/applog/collector/a;->d:J

    .line 185
    iget-object v0, p0, Lcom/bytedance/applog/collector/a;->k:Lcom/bytedance/applog/IPicker;

    if-eqz v0, :cond_23

    .line 186
    iget-object v0, p0, Lcom/bytedance/applog/collector/a;->k:Lcom/bytedance/applog/IPicker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/applog/IPicker;->show(Z)V

    .line 190
    :cond_23
    return-void
.end method
