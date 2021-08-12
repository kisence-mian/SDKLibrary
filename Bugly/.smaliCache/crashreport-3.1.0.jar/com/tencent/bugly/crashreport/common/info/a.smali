.class public final Lcom/tencent/bugly/crashreport/common/info/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static af:Lcom/tencent/bugly/crashreport/common/info/a;


# instance fields
.field public A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Z

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lcom/tencent/bugly/crashreport/a;

.field public E:Landroid/content/SharedPreferences;

.field private final F:Landroid/content/Context;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:J

.field private R:J

.field private S:J

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private W:Z

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/Boolean;

.field public final a:J

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private ag:I

.field private ah:I

.field private ai:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private al:Z

.field private am:Ljava/lang/Boolean;

.field private an:Ljava/lang/Boolean;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field private aq:Ljava/lang/String;

.field private ar:Ljava/lang/String;

.field private as:Ljava/lang/String;

.field private final at:Ljava/lang/Object;

.field private final au:Ljava/lang/Object;

.field private final av:Ljava/lang/Object;

.field private final aw:Ljava/lang/Object;

.field private final ax:Ljava/lang/Object;

.field private final ay:Ljava/lang/Object;

.field private final az:Ljava/lang/Object;

.field public final b:B

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    .line 40
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    .line 51
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    .line 59
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:J

    .line 60
    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:J

    .line 61
    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:J

    .line 62
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:Ljava/util/Map;

    .line 65
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Z

    .line 66
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Ljava/lang/Boolean;

    .line 72
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    .line 78
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    .line 80
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/util/List;

    .line 83
    const/4 v3, -0x1

    iput v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    .line 84
    iput v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    .line 85
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    .line 86
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/util/Map;

    .line 87
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/util/Map;

    .line 89
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Z

    .line 90
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    .line 91
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    .line 92
    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    .line 93
    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    .line 94
    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->t:J

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->u:Z

    .line 97
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->y:Z

    .line 102
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    .line 104
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    .line 105
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Boolean;

    .line 107
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    .line 109
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->as:Ljava/lang/String;

    .line 115
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Z

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    .line 122
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    .line 128
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    .line 129
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->au:Ljava/lang/Object;

    .line 130
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    .line 131
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aw:Ljava/lang/Object;

    .line 132
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ax:Ljava/lang/Object;

    .line 133
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ay:Ljava/lang/Object;

    .line 134
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->az:Ljava/lang/Object;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    .line 138
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    .line 139
    iput-byte v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->b:B

    .line 140
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_f8

    :try_start_df
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;
    :try_end_ed
    .catchall {:try_start_df .. :try_end_ed} :catchall_ee

    goto :goto_f8

    :catchall_ee
    move-exception v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_f8

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    :cond_f8
    :goto_f8
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    .line 142
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1b1

    :try_start_159
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/util/List;

    const-string v3, "BUGLY_APPID"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_170

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/lang/String;

    const-string v4, "APP_ID"

    invoke-virtual {p0, v4, v3}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_170
    const-string v3, "BUGLY_APP_VERSION"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_17c

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    :cond_17c
    const-string v3, "BUGLY_APP_CHANNEL"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_188

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    :cond_188
    const-string v3, "BUGLY_ENABLE_DEBUG"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_19a

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->u:Z

    :cond_19a
    const-string v3, "com.tencent.rdm.uuid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1b1

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;
    :try_end_1a6
    .catchall {:try_start_159 .. :try_end_1a6} :catchall_1a7

    goto :goto_1b1

    :catchall_1a7
    move-exception v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1b1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    :cond_1b1
    :goto_1b1
    :try_start_1b1
    const-string v2, "bugly_db_"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c6

    .line 154
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    .line 155
    const-string v0, "App is first time to be installed on the device."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1c6
    .catchall {:try_start_1b1 .. :try_end_1c6} :catchall_1c7

    .line 161
    :cond_1c6
    goto :goto_1cf

    .line 157
    :catchall_1c7
    move-exception v0

    .line 158
    sget-boolean v2, Lcom/tencent/bugly/b;->c:Z

    if-eqz v2, :cond_1cf

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    :cond_1cf
    :goto_1cf
    const-string v0, "BUGLY_COMMON_VALUES"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    .line 163
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "com info create end"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public static K()I
    .registers 1

    .line 970
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->c()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    .registers 3

    const-class v0, Lcom/tencent/bugly/crashreport/common/info/a;

    monitor-enter v0

    .line 255
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;

    if-nez v1, :cond_e

    .line 256
    new-instance v1, Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/common/info/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 258
    :cond_e
    sget-object p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 254
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()Lcom/tencent/bugly/crashreport/common/info/a;
    .registers 2

    const-class v0, Lcom/tencent/bugly/crashreport/common/info/a;

    monitor-enter v0

    .line 267
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 267
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 276
    const-string v0, "3.1.0"

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 4

    .line 718
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/lang/String;

    .line 720
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Hardware serial number: %s"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 722
    :cond_22
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_e

    .line 733
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 735
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-object v1

    .line 736
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final C()V
    .registers 3

    .line 759
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 761
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final D()I
    .registers 3

    .line 802
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return v1

    .line 804
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final E()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return-object v1

    .line 815
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final F()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->az:Ljava/lang/Object;

    monitor-enter v0

    .line 841
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_e

    .line 842
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 844
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-object v1

    .line 845
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final G()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v0

    .line 869
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_e

    .line 870
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 872
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-object v1

    .line 873
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final H()I
    .registers 3

    .line 898
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ax:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    :try_start_3
    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v1

    .line 900
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final I()I
    .registers 2

    .line 920
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    return v0
.end method

.method public final declared-synchronized J()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 956
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .registers 2

    .line 980
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 981
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/String;

    .line 983
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .registers 2

    .line 992
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 993
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/String;

    .line 995
    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .registers 2

    .line 1004
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1005
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/String;

    .line 1007
    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .registers 2

    .line 1017
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .registers 2

    .line 1026
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1027
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/lang/String;

    .line 1029
    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()J
    .registers 3

    .line 1039
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final R()Z
    .registers 3

    .line 1047
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    if-nez v0, :cond_27

    .line 1048
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->i(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is it a virtual machine? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1051
    :cond_27
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final S()Z
    .registers 3

    .line 1060
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Boolean;

    if-nez v0, :cond_27

    .line 1061
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->j(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Boolean;

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Does it has hook frame? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1064
    :cond_27
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final T()Ljava/lang/String;
    .registers 3

    .line 1073
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 1074
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beacon channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1077
    :cond_23
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .registers 6

    .line 883
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ax:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    :try_start_3
    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    .line 885
    if-eq v1, p1, :cond_21

    .line 886
    iput p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    .line 887
    const-string p1, "user scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 889
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 320
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/lang/String;

    .line 321
    const-string v0, "APP_ID"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 542
    if-eqz p1, :cond_12

    if-nez p2, :cond_5

    goto :goto_12

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_8
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0

    throw p1

    .line 543
    :cond_12
    :goto_12
    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 242
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Z

    .line 243
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    if-eqz v0, :cond_9

    .line 244
    invoke-interface {v0, p1}, Lcom/tencent/bugly/crashreport/a;->setNativeIsAppForeground(Z)Z

    .line 246
    :cond_9
    return-void
.end method

.method public final a()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Z

    return v0
.end method

.method public final b(I)V
    .registers 4

    .line 907
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    .line 908
    const/16 v0, 0x5e20

    if-eq p1, v0, :cond_20

    .line 909
    iput v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    .line 910
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "server scene tag %d changed to tag %d"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 912
    :cond_20
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ay:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    if-nez p1, :cond_7

    .line 343
    :try_start_5
    const-string p1, "10000"

    .line 345
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    .line 346
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 787
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 791
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_10
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0

    throw p1

    .line 788
    :cond_1a
    :goto_1a
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 789
    return-void
.end method

.method public final b(Z)V
    .registers 2

    .line 350
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Z

    .line 351
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 5

    .line 373
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->az:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_5
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/util/Map;

    const-string v2, "E8"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 852
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 857
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_10
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0

    throw p1

    .line 853
    :cond_1a
    :goto_1a
    const-string v0, "server key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 855
    return-void
.end method

.method public final d()V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/lang/String;

    .line 285
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 394
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 395
    monitor-exit p0

    return-void

    .line 393
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/lang/String;

    if-nez v1, :cond_19

    .line 296
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    :try_start_a
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/lang/String;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_19

    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1

    throw v2

    .line 298
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/lang/String;

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    return-object v1

    .line 299
    :catchall_1d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 412
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 413
    monitor-exit p0

    return-void

    .line 411
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    .line 308
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 309
    return-object v0

    .line 311
    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 746
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 747
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 748
    const/4 p1, 0x0

    return-object p1

    .line 750
    :cond_20
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_23
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2d

    return-object p1

    .line 752
    :catchall_2d
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final g()Ljava/lang/String;
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ay:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v1

    .line 332
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 771
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 772
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 773
    const/4 p1, 0x0

    return-object p1

    .line 775
    :cond_20
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_23
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2d

    return-object p1

    .line 777
    :catchall_2d
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final h()Ljava/lang/String;
    .registers 4

    .line 359
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 360
    return-object v0

    .line 362
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 363
    return-object v0
.end method

.method public final declared-synchronized i()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 385
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 385
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 403
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Z

    if-nez v0, :cond_7

    .line 422
    const-string v0, ""

    return-object v0

    .line 424
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 425
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    .line 427
    :cond_11
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 3

    .line 436
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Z

    if-nez v0, :cond_7

    .line 437
    const-string v0, ""

    return-object v0

    .line 439
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:Ljava/lang/String;

    if-eqz v0, :cond_13

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 440
    :cond_13
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:Ljava/lang/String;

    .line 442
    :cond_19
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    .line 451
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Z

    if-nez v0, :cond_7

    .line 452
    const-string v0, ""

    return-object v0

    .line 454
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 455
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:Ljava/lang/String;

    .line 457
    :cond_11
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .line 466
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Z

    if-nez v0, :cond_7

    .line 467
    const-string v0, ""

    return-object v0

    .line 469
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 470
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    .line 472
    :cond_13
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final o()J
    .registers 5

    .line 481
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    .line 482
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:J

    .line 484
    :cond_e
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:J

    return-wide v0
.end method

.method public final p()J
    .registers 5

    .line 493
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    .line 494
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:J

    .line 496
    :cond_e
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:J

    return-wide v0
.end method

.method public final q()J
    .registers 5

    .line 505
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    .line 506
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:J

    .line 508
    :cond_e
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:J

    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 518
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Ljava/lang/String;

    .line 520
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 530
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    .line 532
    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 6

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    const-string v1, "BuglySdkInfos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 556
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 558
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_47

    .line 559
    :try_start_16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_43

    .line 561
    :try_start_2a
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_3c

    .line 564
    goto :goto_1e

    .line 562
    :catchall_3c
    move-exception v2

    .line 563
    :try_start_3d
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 565
    goto :goto_1e

    .line 566
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    goto :goto_4b

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1

    throw v0
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_47

    .line 570
    :cond_46
    goto :goto_4b

    .line 568
    :catchall_47
    move-exception v0

    .line 569
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 571
    :goto_4b
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 574
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    goto :goto_62

    .line 581
    :cond_90
    const-string v1, "SDK_INFO"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 584
    :cond_9e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    .line 593
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->as:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 594
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->as:Ljava/lang/String;

    .line 596
    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->as:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized v()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 605
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 651
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    .line 653
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/Boolean;
    .registers 2

    .line 671
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 672
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Ljava/lang/Boolean;

    .line 674
    :cond_e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 4

    .line 692
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Ljava/lang/String;

    .line 694
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ROM ID: %s"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 696
    :cond_24
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .registers 4

    .line 705
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:Ljava/lang/String;

    .line 707
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "SIM serial number: %s"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 709
    :cond_24
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:Ljava/lang/String;

    return-object v0
.end method
