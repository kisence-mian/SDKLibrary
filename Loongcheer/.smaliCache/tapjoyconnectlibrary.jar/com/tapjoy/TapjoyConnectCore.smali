.class public Lcom/tapjoy/TapjoyConnectCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyConnectCore$PPAThread;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = null

.field private static B:I = 0x0

.field private static C:F = 0.0f

.field private static D:I = 0x0

.field public static final DEFAULT_CURRENCY_MULTIPLIER:F = 1.0f

.field private static E:Ljava/lang/String;

.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/lang/String;

.field private static I:Ljava/lang/String;

.field private static J:Ljava/lang/String;

.field private static K:Ljava/lang/String;

.field private static L:Ljava/lang/String;

.field private static M:Ljava/lang/String;

.field private static N:Ljava/lang/String;

.field private static O:Ljava/lang/String;

.field private static P:Ljava/lang/String;

.field private static Q:Ljava/lang/String;

.field private static R:Ljava/lang/String;

.field private static S:Ljava/lang/String;

.field private static T:F

.field private static U:Z

.field private static V:Ljava/lang/String;

.field private static W:Ljava/lang/String;

.field private static X:Ljava/lang/String;

.field private static Y:Ljava/lang/String;

.field private static Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static a:I

.field private static aA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static aB:Ljava/lang/Integer;

.field private static aC:Ljava/lang/Integer;

.field private static aD:Ljava/lang/Integer;

.field private static aE:Ljava/lang/Long;

.field private static aF:Ljava/lang/Long;

.field private static aG:Ljava/lang/Long;

.field private static aH:Ljava/lang/String;

.field private static aI:Ljava/lang/Integer;

.field private static aJ:Ljava/lang/Double;

.field private static aK:Ljava/lang/Double;

.field private static aL:Ljava/lang/Long;

.field private static aM:Ljava/lang/Integer;

.field private static aN:Ljava/lang/Integer;

.field private static aO:Ljava/lang/Integer;

.field private static aP:Ljava/lang/String;

.field private static aQ:Ljava/lang/String;

.field private static aR:Ljava/lang/String;

.field private static aS:Ljava/lang/String;

.field private static aT:Ljava/lang/String;

.field private static aU:Ljava/lang/String;

.field private static aV:Z

.field private static aW:Lcom/tapjoy/TJConnectListener;

.field private static aX:Z

.field private static aa:Ljava/lang/String;

.field private static ad:J

.field private static af:Z

.field private static ag:Landroid/content/pm/PackageManager;

.field private static ah:Lcom/tapjoy/TapjoyGpsHelper;

.field private static ai:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static aj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ak:Ljava/lang/String;

.field private static al:Ljava/lang/String;

.field private static am:Ljava/lang/String;

.field private static an:Ljava/lang/String;

.field private static ao:Ljava/lang/Integer;

.field private static ap:Ljava/lang/String;

.field private static aq:Ljava/lang/String;

.field private static ar:Ljava/lang/Long;

.field private static as:Ljava/lang/String;

.field private static at:Ljava/lang/Integer;

.field private static au:Ljava/lang/Integer;

.field private static av:Ljava/lang/String;

.field private static aw:Ljava/lang/String;

.field private static ax:Ljava/lang/String;

.field private static ay:Ljava/lang/String;

.field private static az:Ljava/lang/String;

.field protected static b:I

.field protected static c:Ljava/lang/String;

.field protected static d:Z

.field protected static e:Ljava/lang/String;

.field protected static f:Ljava/lang/String;

.field private static g:Landroid/content/Context;

.field private static h:Ljava/lang/String;

.field private static i:Lcom/tapjoy/TapjoyConnectCore;

.field private static j:Lcom/tapjoy/TapjoyURLConnection;

.field private static k:Lcom/tapjoy/TJConnectListener;

.field private static l:Lcom/tapjoy/TJSetUserIDListener;

.field private static m:Z

.field private static n:Z

.field private static o:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private ab:J

.field private ac:Z

.field private ae:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    .line 68
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/lang/String;

    .line 70
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 71
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    .line 72
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    .line 73
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    .line 75
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->m:Z

    .line 76
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->n:Z

    .line 79
    new-instance v2, Ljava/util/Vector;

    sget-object v3, Lcom/tapjoy/TapjoyConstants;->dependencyClassNames:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    .line 82
    const-string v2, ""

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    .line 83
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    .line 84
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    .line 85
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    .line 86
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    .line 87
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->u:Ljava/lang/String;

    .line 88
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->v:Ljava/lang/String;

    .line 89
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    .line 90
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    .line 91
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    .line 92
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    .line 93
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->A:Ljava/lang/String;

    .line 94
    const/4 v3, 0x1

    sput v3, Lcom/tapjoy/TapjoyConnectCore;->B:I

    .line 95
    const/high16 v4, 0x3f800000    # 1.0f

    sput v4, Lcom/tapjoy/TapjoyConnectCore;->C:F

    .line 96
    sput v3, Lcom/tapjoy/TapjoyConnectCore;->D:I

    .line 97
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    .line 98
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    .line 100
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    .line 101
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    .line 102
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    .line 103
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    .line 104
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->K:Ljava/lang/String;

    .line 105
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    .line 106
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    .line 107
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    .line 109
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    .line 110
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    .line 112
    const-string v3, "native"

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->Q:Ljava/lang/String;

    .line 113
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    .line 115
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->S:Ljava/lang/String;

    .line 117
    sput v4, Lcom/tapjoy/TapjoyConnectCore;->T:F

    .line 119
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->U:Z

    .line 122
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->V:Ljava/lang/String;

    .line 123
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    .line 124
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    .line 125
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    .line 126
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->Z:Ljava/util/Map;

    .line 134
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->aa:Ljava/lang/String;

    .line 138
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/tapjoy/TapjoyConnectCore;->ad:J

    .line 146
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->a:I

    .line 147
    sput v1, Lcom/tapjoy/TapjoyConnectCore;->b:I

    .line 149
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    .line 151
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    .line 152
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->f:Ljava/lang/String;

    .line 154
    sget-object v3, Lcom/tapjoy/TapjoyConnectFlag;->CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/util/Hashtable;

    .line 156
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    .line 200
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aS:Ljava/lang/String;

    .line 201
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aT:Ljava/lang/String;

    .line 202
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aU:Ljava/lang/String;

    .line 203
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->aV:Z

    .line 204
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->aW:Lcom/tapjoy/TJConnectListener;

    .line 205
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->aX:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ab:J

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ac:Z

    .line 139
    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ae:Z

    return-void
.end method

.method private static A()V
    .registers 1

    .line 1130
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 1131
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/util/Hashtable;

    .line 1134
    :cond_b
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->B()V

    .line 1137
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->C()V

    .line 1138
    return-void
.end method

.method private static B()V
    .registers 9

    .line 1147
    const-string v0, "TapjoyConnect"

    :try_start_2
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ag:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_5f

    .line 1149
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1152
    if-eqz v1, :cond_5a

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_5a

    .line 1154
    sget-object v2, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_54

    aget-object v5, v2, v4

    .line 1156
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "tapjoy."

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1157
    if-eqz v6, :cond_51

    .line 1159
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found manifest flag: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1163
    :cond_54
    const-string v1, "Metadata successfully loaded"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1167
    :cond_5a
    const-string v1, "No metadata present."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5f} :catch_60

    .line 1174
    :cond_5f
    return-void

    .line 1171
    :catch_60
    move-exception v1

    .line 1173
    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error reading manifest meta-data -- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 1175
    return-void
.end method

.method private static C()V
    .registers 4

    .line 1182
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1187
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw/tapjoy_config"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1188
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1191
    :try_start_18
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1192
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/util/Properties;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_28} :catch_29

    .line 1194
    return-void

    .line 1193
    :catch_29
    move-exception v0

    .line 1195
    return-void
.end method

.method private static D()V
    .registers 3

    .line 1226
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ag:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1228
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1229
    if-eqz v0, :cond_29

    .line 1231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 1232
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->a(Landroid/content/pm/ActivityInfo;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_b6

    goto :goto_19

    .line 1239
    :cond_29
    nop

    .line 1241
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_8e

    .line 1243
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const-string v1, "Missing "

    if-ne v0, v2, :cond_65

    .line 1244
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dependency class in manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_65
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dependency classes in manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_8e
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->E()V

    .line 1253
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->F()V

    .line 1257
    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1259
    const-string v0, "TapjoyConnect"

    const-string v1, "Skipping integration check for Google Play Services and Advertising ID. Do this only if you do not have access to Google Play Services."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1263
    :cond_b0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->checkGooglePlayIntegration()V

    .line 1266
    return-void

    .line 1236
    :catch_b6
    move-exception v0

    .line 1238
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Error while getting package info."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    goto :goto_c0

    :goto_bf
    throw v0

    :goto_c0
    goto :goto_bf
.end method

.method private static E()V
    .registers 7

    .line 1274
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1275
    sget-object v1, Lcom/tapjoy/TapjoyConstants;->dependencyPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_1a

    aget-object v5, v1, v4

    .line 1277
    invoke-static {v5}, Lcom/tapjoy/TapjoyConnectCore;->f(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 1279
    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1275
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1283
    :cond_1a
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_67

    .line 1285
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v2, :cond_40

    .line 1286
    new-instance v1, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing 1 permission in manifest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1288
    :cond_40
    new-instance v1, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permissions in manifest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1292
    :cond_67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1293
    sget-object v1, Lcom/tapjoy/TapjoyConstants;->optionalPermissions:[Ljava/lang/String;

    array-length v4, v1

    :goto_6f
    if-ge v3, v4, :cond_7f

    aget-object v5, v1, v3

    .line 1295
    invoke-static {v5}, Lcom/tapjoy/TapjoyConnectCore;->f(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7c

    .line 1297
    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 1301
    :cond_7f
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_c4

    .line 1303
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const-string v3, "WARNING -- "

    const-string v4, "TapjoyConnect"

    if-ne v1, v2, :cond_aa

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permission was not found in manifest. The exclusion of this permission could cause problems."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1306
    :cond_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permissions were not found in manifest. The exclusion of these permissions could cause problems."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    :cond_c4
    return-void
.end method

.method private static F()V
    .registers 4

    .line 1319
    :try_start_0
    const-string v0, "com.tapjoy.TJAdUnitJSBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_1e

    .line 1324
    nop

    .line 1329
    const/4 v1, 0x1

    :try_start_8
    new-array v1, v1, [Ljava/lang/Class;

    .line 1330
    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 1331
    const-string v2, "closeRequested"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_14} :catch_15

    .line 1337
    return-void

    .line 1333
    :catch_15
    move-exception v0

    .line 1336
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Try configuring Proguard or other code obfuscators to ignore com.tapjoy classes. Visit http://dev.tapjoy.comfor more information."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :catch_1e
    move-exception v0

    .line 1323
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "ClassNotFoundException: com.tapjoy.TJAdUnitJSBridge was not found."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static G()Z
    .registers 1

    .line 1343
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static H()Z
    .registers 2

    .line 1358
    const-string v0, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private static I()Z
    .registers 2

    .line 1363
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    .line 1364
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayManifestConfigured()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_10
    nop

    .line 1365
    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1366
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1367
    const/4 v0, 0x0

    return v0

    .line 1369
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private static J()Ljava/lang/String;
    .registers 7

    .line 1848
    nop

    .line 1850
    const-string v0, "TapjoyConnect"

    const-string v1, "generating sessionID..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const/4 v1, 0x0

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->ad:J
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_2e

    .line 1860
    goto :goto_45

    .line 1857
    :catch_2e
    move-exception v2

    .line 1859
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to generate session id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :goto_45
    return-object v1
.end method

.method private static K()Ljava/lang/String;
    .registers 3

    .line 1881
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1883
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    return-object v0

    .line 1885
    :cond_9
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->H()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->I()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 10353
    :cond_15
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 1887
    :goto_24
    if-eqz v0, :cond_29

    .line 1889
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    return-object v0

    .line 11348
    :cond_29
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 1891
    :goto_35
    if-eqz v1, :cond_3a

    .line 1893
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    return-object v0

    .line 1898
    :cond_3a
    const-string v0, "TapjoyConnect"

    const-string v1, "Error -- no valid device identifier"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const/4 v0, 0x0

    return-object v0
.end method

.method private static L()Ljava/lang/String;
    .registers 2

    .line 2476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2478
    :try_start_27
    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object v0

    .line 2479
    :catch_2c
    move-exception v1

    .line 2480
    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .registers 5

    .line 1911
    const-string v0, ":"

    .line 1917
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    .line 1923
    goto :goto_56

    .line 1920
    :catch_34
    move-exception p0

    .line 1922
    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in computing verifier value -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p0, "TapjoyConnect"

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    const-string p0, ""

    .line 1925
    :goto_56
    return-object p0
.end method

.method static synthetic a()V
    .registers 8

    .line 11406
    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->aX:Z

    if-nez v0, :cond_b0

    .line 11410
    const/4 v0, 0x1

    :try_start_5
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->H()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1, v2}, Lcom/tapjoy/TapjoyGpsHelper;->loadAdvertisingId(Z)V

    .line 11413
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayServicesAvailable()Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayManifestConfigured()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 11414
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyGpsHelper;->getDeviceGooglePlayServicesVersion()I

    move-result v1

    sput v1, Lcom/tapjoy/TapjoyConnectCore;->b:I

    .line 11415
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyGpsHelper;->getPackagedGooglePlayServicesVersion()I

    move-result v1

    sput v1, Lcom/tapjoy/TapjoyConnectCore;->a:I

    .line 11419
    :cond_34
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyGpsHelper;->isAdIdAvailable()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 11420
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyGpsHelper;->isAdTrackingEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->d:Z

    .line 11421
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyGpsHelper;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    .line 11424
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    sget-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->d:Z

    if-nez v4, :cond_58

    const/4 v4, 0x1

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    .line 12201
    :goto_59
    iget-object v1, v1, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    .line 12640
    iget-object v5, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v5, v5, Lcom/tapjoy/internal/hl;->A:Lcom/tapjoy/internal/n;

    invoke-virtual {v5}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object v5

    .line 12642
    iget-object v6, v1, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object v2, v6, Lcom/tapjoy/internal/fi$a;->q:Ljava/lang/String;

    .line 12643
    iget-object v6, v1, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/tapjoy/internal/fi$a;->r:Ljava/lang/Boolean;

    .line 12645
    iget-object v6, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v6, v6, Lcom/tapjoy/internal/hl;->A:Lcom/tapjoy/internal/n;

    invoke-virtual {v6, v2}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 12646
    iget-object v6, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v6, v6, Lcom/tapjoy/internal/hl;->B:Lcom/tapjoy/internal/g;

    invoke-virtual {v6, v4}, Lcom/tapjoy/internal/g;->a(Z)V

    .line 12648
    invoke-static {v2, v4}, Lcom/tapjoy/internal/hp;->a(Ljava/lang/String;Z)V

    .line 12650
    invoke-static {v5}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_91

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 12651
    iget-object v1, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/hl;->a(Z)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_91} :catch_92

    .line 11429
    :cond_91
    goto :goto_ae

    .line 11426
    :catch_92
    move-exception v1

    .line 11427
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error fetching advertising id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TapjoyConnect"

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11428
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11430
    :goto_ae
    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->aX:Z

    .line 63
    :cond_b0
    return-void
.end method

.method private static a(Landroid/content/pm/ActivityInfo;)V
    .registers 5

    .line 1379
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 1381
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1384
    :try_start_12
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1386
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1389
    iget v2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_2e

    .line 1390
    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1393
    :cond_2e
    iget v2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_3a

    .line 1394
    const-string v2, "keyboardHidden"

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1396
    :cond_3a
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_99

    .line 1397
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_70

    .line 1398
    new-instance p0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " property is not specified in manifest configChanges for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1400
    :cond_70
    new-instance p0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " properties are not specified in manifest configChanges for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1404
    :cond_99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_c2

    iget v1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_c2

    .line 1405
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WARNING -- screenSize property is not specified in manifest configChanges for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    :cond_c2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_f7

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "com.tapjoy.TJAdUnitActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v1, 0x200

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_da

    goto :goto_f7

    .line 1409
    :cond_da
    new-instance p0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'hardwareAccelerated\' property not specified in manifest for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1411
    :cond_f7
    :goto_f7
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_fc
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_fc} :catch_fd

    .line 1416
    return-void

    .line 1413
    :catch_fd
    move-exception p0

    .line 1415
    new-instance p0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ClassNotFoundException] Could not find dependency class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1418
    :cond_11b
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2127
    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_10
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 2128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2129
    :cond_29
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    return-void
.end method

.method private static a(Ljava/util/Properties;)V
    .registers 4

    .line 1202
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1204
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1208
    :try_start_a
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1209
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1210
    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_19} :catch_1a

    goto :goto_22

    .line 1211
    :catch_1a
    move-exception v1

    .line 1213
    const-string v1, "TapjoyConnect"

    const-string v2, "Error parsing configuration properties in tapjoy_config.txt"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :goto_22
    goto :goto_4

    .line 1216
    :cond_23
    return-void
.end method

.method static synthetic a(Z)V
    .registers 4

    .line 63
    nop

    .line 14050
    const-string v0, "TapjoyConnect"

    if-eqz p0, :cond_12

    .line 14051
    const-string p0, "Set userID is successful"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14052
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    if-eqz p0, :cond_28

    .line 14053
    invoke-interface {p0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDSuccess()V

    return-void

    .line 14056
    :cond_12
    const-string p0, "Failed to set userID"

    .line 14057
    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v1, v2, p0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 14058
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    if-eqz v0, :cond_25

    .line 14059
    invoke-interface {v0, p0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    .line 14061
    :cond_25
    const/4 p0, 0x1

    sput-boolean p0, Lcom/tapjoy/TapjoyConnectCore;->m:Z

    .line 63
    :cond_28
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 3

    .line 803
    nop

    .line 804
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ag:Landroid/content/pm/PackageManager;

    .line 806
    invoke-static {}, Lcom/tapjoy/internal/gg;->a()Lcom/tapjoy/internal/gg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gg;->a(Landroid/content/Context;)V

    .line 807
    invoke-static {}, Lcom/tapjoy/internal/gc;->a()Lcom/tapjoy/internal/gc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gc;->a(Landroid/content/Context;)V

    .line 809
    new-instance p0, Lcom/tapjoy/TapjoyGpsHelper;

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyGpsHelper;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->ah:Lcom/tapjoy/TapjoyGpsHelper;

    .line 811
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    if-nez p0, :cond_2b

    .line 812
    new-instance p0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {p0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    .line 816
    :cond_2b
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->A()V

    .line 819
    const-string p0, "unit_test_mode"

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 820
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->D()V

    .line 824
    :cond_3d
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->u()V

    .line 827
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->s()V

    .line 830
    const-string p0, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5b

    .line 831
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->f:Ljava/lang/String;

    .line 835
    :cond_5b
    const-string p0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_73

    .line 836
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    .line 840
    :cond_73
    const-string p0, "TJC_OPTION_USER_ID"

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a5

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a5

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting userID to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 845
    :cond_a5
    const-string p0, "TJC_OPTION_SERVICE_URL"

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 846
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->S:Ljava/lang/String;

    .line 848
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/util/Hashtable;

    if-eqz p0, :cond_b8

    .line 849
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->t()V

    .line 852
    :cond_b8
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 2

    .line 63
    nop

    .line 13558
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 13560
    if-eqz p0, :cond_1d

    .line 13562
    const-string v0, "Success"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object p0

    .line 13565
    if-eqz p0, :cond_1b

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    .line 13571
    :cond_1b
    const/4 p0, 0x0

    return p0

    .line 13575
    :cond_1d
    const/4 p0, 0x1

    .line 63
    return p0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 23

    .line 1431
    const-string v1, "TapjoyConnect"

    const-string v2, "configurations"

    .line 1433
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_176
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_16b
    .catchall {:try_start_4 .. :try_end_8} :catchall_167

    .line 1434
    :try_start_8
    invoke-virtual {v4}, Lcom/tapjoy/internal/bi;->d()Ljava/util/Map;

    move-result-object v5

    .line 1436
    const-string v0, "override_service_url"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1439
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    const-string v6, "TJC_OPTION_SERVICE_URL"

    invoke-static {v6, v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_26
    const-string v6, "app_group_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1443
    const-string v7, "store"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1444
    const-string v8, "analytics_api_key"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1445
    const-string v9, "user_token_config"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1446
    const-string v9, "managed_device_id"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1447
    const-string v9, "cache_max_age"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1449
    new-instance v9, Lcom/tapjoy/internal/fp;

    invoke-direct {v9, v8}, Lcom/tapjoy/internal/fp;-><init>(Ljava/lang/String;)V

    .line 1450
    nop

    .line 7150
    iget-object v10, v9, Lcom/tapjoy/internal/fp;->a:Lcom/tapjoy/internal/fp$a;

    .line 1450
    sget-object v11, Lcom/tapjoy/internal/fp$a;->b:Lcom/tapjoy/internal/fp$a;

    if-ne v10, v11, :cond_156

    .line 1453
    nop

    .line 8142
    iget-object v10, v9, Lcom/tapjoy/internal/fp;->b:Ljava/lang/String;

    .line 1453
    invoke-static {v10}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1454
    nop

    .line 8146
    iget-object v13, v9, Lcom/tapjoy/internal/fp;->c:Ljava/lang/String;

    .line 1454
    nop

    .line 1455
    if-nez v6, :cond_7d

    .line 1456
    move-object/from16 v6, v17

    .line 1459
    :cond_7d
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v9

    sget-object v10, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v12, "12.8.1"

    const-string v18, "https://rpc.tapjoy.com/"

    move-object v11, v8

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v20, v14

    move-object/from16 v14, v17

    move-object v3, v15

    move-object/from16 v15, v19

    invoke-virtual/range {v9 .. v15}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    sput-object v6, Lcom/tapjoy/TapjoyConnectCore;->V:Ljava/lang/String;

    .line 1466
    sput-object v7, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    .line 1467
    sput-object v8, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    .line 1468
    sput-object v16, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    .line 1470
    instance-of v6, v3, Ljava/util/Map;

    if-eqz v6, :cond_a7

    .line 1471
    move-object v15, v3

    check-cast v15, Ljava/util/Map;

    sput-object v15, Lcom/tapjoy/TapjoyConnectCore;->Z:Ljava/util/Map;

    .line 1474
    :cond_a7
    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b7

    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->m:Z

    if-eqz v0, :cond_b7

    .line 1475
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 1478
    :cond_b7
    invoke-virtual {v4}, Lcom/tapjoy/internal/bi;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_ba} :catch_164
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_ba} :catch_161
    .catchall {:try_start_8 .. :try_end_ba} :catchall_15e

    .line 1479
    nop

    .line 1481
    if-nez p1, :cond_150

    .line 1482
    nop

    .line 8489
    nop

    .line 8491
    move-object/from16 v0, v20

    :try_start_c1
    instance-of v3, v0, Ljava/lang/String;
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c3} :catch_14d
    .catch Ljava/lang/RuntimeException; {:try_start_c1 .. :try_end_c3} :catch_14a
    .catchall {:try_start_c1 .. :try_end_c3} :catchall_147

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_d5

    .line 8493
    :try_start_c7
    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_d2} :catch_d3
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d2} :catch_14d
    .catch Ljava/lang/RuntimeException; {:try_start_c7 .. :try_end_d2} :catch_14a
    .catchall {:try_start_c7 .. :try_end_d2} :catchall_147

    .line 8496
    goto :goto_e3

    .line 8495
    :catch_d3
    move-exception v0

    .line 8496
    goto :goto_e2

    .line 8498
    :cond_d5
    :try_start_d5
    instance-of v3, v0, Ljava/lang/Number;
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d7} :catch_14d
    .catch Ljava/lang/RuntimeException; {:try_start_d5 .. :try_end_d7} :catch_14a
    .catchall {:try_start_d5 .. :try_end_d7} :catchall_147

    if-eqz v3, :cond_e2

    .line 8500
    :try_start_d9
    move-object v14, v0

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v3
    :try_end_e0
    .catch Ljava/lang/NumberFormatException; {:try_start_d9 .. :try_end_e0} :catch_e1
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_e0} :catch_14d
    .catch Ljava/lang/RuntimeException; {:try_start_d9 .. :try_end_e0} :catch_14a
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_147

    .line 8503
    goto :goto_e3

    .line 8502
    :catch_e1
    move-exception v0

    .line 8506
    :cond_e2
    :goto_e2
    move-wide v3, v6

    :goto_e3
    cmp-long v0, v3, v6

    if-gtz v0, :cond_ef

    .line 8507
    :try_start_e7
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAppSettings;->removeConnectResult()V

    goto :goto_105

    .line 8510
    :cond_ef
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v0

    .line 8512
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->L()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    mul-long v3, v3, v7

    .line 8513
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 8510
    move-object/from16 v7, p0

    invoke-virtual {v0, v7, v6, v3, v4}, Lcom/tapjoy/TapjoyAppSettings;->saveConnectResultAndParams(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1484
    :goto_105
    invoke-static {}, Lcom/tapjoy/internal/gc;->a()Lcom/tapjoy/internal/gc;

    move-result-object v0

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9114
    instance-of v4, v3, Ljava/util/Map;
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_10f} :catch_14d
    .catch Ljava/lang/RuntimeException; {:try_start_e7 .. :try_end_10f} :catch_14a
    .catchall {:try_start_e7 .. :try_end_10f} :catchall_147

    if-eqz v4, :cond_12f

    .line 9116
    :try_start_111
    iget-object v4, v0, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/ga;

    move-object v5, v3

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/ga;->a(Ljava/util/Map;)V

    .line 9119
    invoke-static {v3}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9120
    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9121
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_12c} :catch_12d
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_12c} :catch_14d
    .catch Ljava/lang/RuntimeException; {:try_start_111 .. :try_end_12c} :catch_14a
    .catchall {:try_start_111 .. :try_end_12c} :catchall_147

    goto :goto_12e

    .line 9122
    :catch_12d
    move-exception v0

    .line 9124
    :goto_12e
    goto :goto_150

    .line 9125
    :cond_12f
    if-nez v3, :cond_150

    .line 9126
    :try_start_131
    iget-object v3, v0, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/ga;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/ga;->a(Ljava/util/Map;)V

    .line 9128
    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9129
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_146} :catch_14d
    .catch Ljava/lang/RuntimeException; {:try_start_131 .. :try_end_146} :catch_14a
    .catchall {:try_start_131 .. :try_end_146} :catchall_147

    goto :goto_150

    .line 1492
    :catchall_147
    move-exception v0

    const/4 v3, 0x0

    goto :goto_187

    .line 1489
    :catch_14a
    move-exception v0

    const/4 v3, 0x0

    goto :goto_16e

    .line 1487
    :catch_14d
    move-exception v0

    const/4 v3, 0x0

    goto :goto_179

    .line 1492
    :cond_150
    :goto_150
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1486
    const/4 v0, 0x1

    return v0

    .line 1451
    :cond_156
    :try_start_156
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid analytics_api_key"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_15e} :catch_164
    .catch Ljava/lang/RuntimeException; {:try_start_156 .. :try_end_15e} :catch_161
    .catchall {:try_start_156 .. :try_end_15e} :catchall_15e

    .line 1492
    :catchall_15e
    move-exception v0

    move-object v3, v4

    goto :goto_187

    .line 1489
    :catch_161
    move-exception v0

    move-object v3, v4

    goto :goto_16e

    .line 1487
    :catch_164
    move-exception v0

    move-object v3, v4

    goto :goto_179

    .line 1492
    :catchall_167
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_187

    .line 1489
    :catch_16b
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 1490
    :goto_16e
    :try_start_16e
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_180

    .line 1487
    :catch_176
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 1488
    :goto_179
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_180
    .catchall {:try_start_16e .. :try_end_180} :catchall_186

    .line 1492
    :goto_180
    invoke-static {v3}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1493
    nop

    .line 1494
    const/4 v0, 0x0

    return v0

    .line 1492
    :catchall_186
    move-exception v0

    :goto_187
    invoke-static {v3}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1493
    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .line 63
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    return-object v0
.end method

.method private static b(J)Ljava/lang/String;
    .registers 5

    .line 1937
    const-string v0, ":"

    .line 1943
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->aS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/tapjoy/TapjoyConnectCore;->aT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    .line 1948
    goto :goto_56

    .line 1945
    :catch_34
    move-exception p0

    .line 1947
    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in computing verifier value -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p0, "TapjoyConnect"

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    const-string p0, ""

    .line 1950
    :goto_56
    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .registers 1

    .line 63
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c()Lcom/tapjoy/TapjoyURLConnection;
    .registers 1

    .line 63
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 11

    .line 1498
    const-string v0, "TapjoyConnect"

    .line 1500
    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_a5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_7} :catch_99
    .catchall {:try_start_3 .. :try_end_7} :catchall_97

    .line 1501
    :try_start_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->d()Ljava/util/Map;

    move-result-object v2

    .line 1503
    const-string v3, "override_service_url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1505
    invoke-static {v3}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1506
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    const-string v4, "TJC_OPTION_SERVICE_URL"

    invoke-static {v4, v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    :cond_25
    const-string v3, "app_group_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1510
    const-string v4, "store"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1511
    const-string v5, "analytics_api_key"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1512
    const-string v6, "user_token_config"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1513
    const-string v7, "managed_device_id"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1515
    new-instance v7, Lcom/tapjoy/internal/fp;

    invoke-direct {v7, v5}, Lcom/tapjoy/internal/fp;-><init>(Ljava/lang/String;)V

    .line 1516
    nop

    .line 9150
    iget-object v5, v7, Lcom/tapjoy/internal/fp;->a:Lcom/tapjoy/internal/fp$a;

    .line 1516
    sget-object v8, Lcom/tapjoy/internal/fp$a;->b:Lcom/tapjoy/internal/fp$a;

    if-ne v5, v8, :cond_88

    .line 1520
    nop

    .line 10142
    iget-object v5, v7, Lcom/tapjoy/internal/fp;->b:Ljava/lang/String;

    .line 1520
    invoke-static {v5}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1521
    if-nez v3, :cond_71

    .line 1522
    move-object v3, v5

    .line 1525
    :cond_71
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->aU:Ljava/lang/String;

    .line 1526
    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    .line 1527
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    .line 1529
    instance-of v2, v6, Ljava/util/Map;

    if-eqz v2, :cond_7f

    .line 1530
    check-cast v6, Ljava/util/Map;

    sput-object v6, Lcom/tapjoy/TapjoyConnectCore;->Z:Ljava/util/Map;

    .line 1533
    :cond_7f
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_82} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_82} :catch_93
    .catchall {:try_start_7 .. :try_end_82} :catchall_90

    .line 1534
    nop

    .line 1542
    invoke-static {v1}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1536
    const/4 p0, 0x1

    return p0

    .line 1517
    :cond_88
    :try_start_88
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid analytics_api_key"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_90} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_88 .. :try_end_90} :catch_93
    .catchall {:try_start_88 .. :try_end_90} :catchall_90

    .line 1542
    :catchall_90
    move-exception v0

    move-object v1, p0

    goto :goto_b6

    .line 1539
    :catch_93
    move-exception v1

    goto :goto_9d

    .line 1537
    :catch_95
    move-exception v1

    goto :goto_a9

    .line 1542
    :catchall_97
    move-exception v0

    goto :goto_b6

    .line 1539
    :catch_99
    move-exception p0

    move-object v9, v1

    move-object v1, p0

    move-object p0, v9

    .line 1540
    :goto_9d
    :try_start_9d
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    .line 1537
    :catch_a5
    move-exception p0

    move-object v9, v1

    move-object v1, p0

    move-object p0, v9

    .line 1538
    :goto_a9
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_9d .. :try_end_b0} :catchall_90

    .line 1542
    :goto_b0
    invoke-static {p0}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1543
    nop

    .line 1544
    const/4 p0, 0x0

    return p0

    .line 1542
    :goto_b6
    invoke-static {v1}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1543
    throw v0
.end method

.method static synthetic d()Z
    .registers 1

    .line 63
    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->n:Z

    return v0
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 5

    .line 1588
    const-string v0, "TapjoyConnect"

    .line 1590
    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_7} :catch_2f
    .catchall {:try_start_3 .. :try_end_7} :catchall_2d

    .line 1591
    :try_start_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1592
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->s()V

    .line 1593
    const-string v2, "Successfully sent completed Pay-Per-Action to Tapjoy server."

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_18} :catch_29
    .catchall {:try_start_7 .. :try_end_18} :catchall_26

    .line 1595
    nop

    .line 1605
    invoke-static {v1}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1596
    const/4 p0, 0x1

    return p0

    .line 1598
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_21} :catch_29
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 1599
    nop

    .line 1605
    invoke-static {v1}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1606
    :goto_25
    goto :goto_4a

    .line 1605
    :catchall_26
    move-exception v0

    move-object v1, p0

    goto :goto_58

    .line 1602
    :catch_29
    move-exception v1

    goto :goto_33

    .line 1600
    :catch_2b
    move-exception v1

    goto :goto_3f

    .line 1605
    :catchall_2d
    move-exception v0

    goto :goto_58

    .line 1602
    :catch_2f
    move-exception p0

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    .line 1603
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 1600
    :catch_3b
    move-exception p0

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    .line 1601
    :goto_3f
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_26

    .line 1605
    :goto_46
    invoke-static {p0}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    goto :goto_25

    .line 1607
    :goto_4a
    new-instance p0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v2, "Completed Pay-Per-Action call failed."

    invoke-direct {p0, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 1608
    const/4 p0, 0x0

    return p0

    .line 1605
    :goto_58
    invoke-static {v1}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1606
    goto :goto_5d

    :goto_5c
    throw v0

    :goto_5d
    goto :goto_5c
.end method

.method static synthetic e()Z
    .registers 1

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->n:Z

    return v0
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 3

    .line 1822
    nop

    .line 1825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x0

    if-gtz p0, :cond_25

    .line 1831
    const-string p0, "market://details"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1832
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->ag:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 1835
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_25

    .line 1836
    const/4 v1, 0x1

    .line 1839
    :cond_25
    return v1
.end method

.method static synthetic f()Lcom/tapjoy/TJSetUserIDListener;
    .registers 1

    .line 63
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Z
    .registers 3

    .line 2139
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ag:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 2141
    if-eqz p0, :cond_10

    .line 2142
    const/4 p0, 0x0

    return p0

    .line 2144
    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method private static g()V
    .registers 8

    .line 356
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 358
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/lang/String;

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    sget-object v7, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    const-string v4, "12.8.1"

    const-string v5, "https://rpc.tapjoy.com/"

    invoke-virtual/range {v1 .. v7}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1b
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_22

    .line 365
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    .line 367
    :cond_22
    return-void
.end method

.method public static getAndroidID()Ljava/lang/String;
    .registers 1

    .line 2360
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .registers 1

    .line 1634
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static getAwardCurrencyVerifier(JILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "time"    # J
    .param p2, "amount"    # I
    .param p3, "guid"    # Ljava/lang/String;

    .line 1962
    const-string v0, ":"

    .line 1968
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_44

    .line 1973
    goto :goto_66

    .line 1970
    :catch_44
    move-exception v0

    .line 1972
    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in computing awardCurrencyVerifier -- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v0, "TapjoyConnect"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    const-string v0, ""

    .line 1975
    :goto_66
    return-object v0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .registers 1

    .line 1702
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    return-object v0
.end method

.method public static getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 2338
    nop

    .line 2340
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/util/Hashtable;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2342
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 2345
    :cond_16
    const-string v0, ""

    :goto_18
    return-object v0
.end method

.method public static getConnectURL()Ljava/lang/String;
    .registers 1

    .line 1679
    const-string v0, "https://connect.tapjoy.com/"

    return-object v0
.end method

.method public static getConnectionSubType()Ljava/lang/String;
    .registers 5

    .line 1752
    const-string v0, "TapjoyConnect"

    const-string v1, ""

    .line 1758
    :try_start_4
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1761
    if-eqz v2, :cond_25

    .line 1763
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 1764
    const-string v2, "connection_sub_type: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    .line 1770
    :cond_25
    goto :goto_3d

    .line 1767
    :catch_26
    move-exception v2

    .line 1769
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConnectionSubType error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    :goto_3d
    return-object v1
.end method

.method public static getConnectionType()Ljava/lang/String;
    .registers 5

    .line 1711
    const-string v0, "TapjoyConnect"

    const-string v1, ""

    .line 1717
    :try_start_4
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1720
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 1722
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_66

    .line 1729
    const-string v1, "mobile"

    goto :goto_26

    .line 1726
    :sswitch_24
    const-string v1, "wifi"

    .line 1733
    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectivity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string v2, "connection_type: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_4e

    .line 1740
    :cond_4d
    goto :goto_65

    .line 1737
    :catch_4e
    move-exception v2

    .line 1739
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConnectionType error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :goto_65
    return-object v1

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_24
        0x6 -> :sswitch_24
    .end sparse-switch
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 1871
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static getCustomParameter()Ljava/lang/String;
    .registers 1

    .line 2522
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceScreenDensityScale()F
    .registers 1

    .line 2401
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->C:F

    return v0
.end method

.method public static getGenericURLParams()Ljava/util/Map;
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

    .line 486
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->i()Ljava/util/Map;

    move-result-object v0

    .line 487
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    const-string v2, "app_id"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 488
    return-object v0
.end method

.method public static getHostURL()Ljava/lang/String;
    .registers 1

    .line 1661
    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyConnectCore;
    .registers 1

    .line 213
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    return-object v0
.end method

.method public static getLimitedAppID()Ljava/lang/String;
    .registers 1

    .line 1643
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aS:Ljava/lang/String;

    return-object v0
.end method

.method public static getLimitedGenericURLParams()Ljava/util/Map;
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

    .line 493
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->i()Ljava/util/Map;

    move-result-object v0

    .line 496
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aS:Ljava/lang/String;

    const-string v2, "app_id"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 497
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aU:Ljava/lang/String;

    const-string v2, "app_group_id"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 498
    const-string v1, "lmtd"

    const-string v2, "true"

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 500
    return-object v0
.end method

.method public static getLimitedTimeStampAndVerifierParams()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 571
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 573
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 574
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    const/4 v4, 0x1

    invoke-static {v3, v1, v0, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 575
    const-string v0, "verifier"

    invoke-static {v3, v0, v2, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 577
    return-object v3
.end method

.method public static getLimitedURLParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 473
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 474
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 475
    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .registers 1

    .line 2391
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlacementURL()Ljava/lang/String;
    .registers 1

    .line 1670
    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRedirectDomain()Ljava/lang/String;
    .registers 1

    .line 1684
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->S:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .registers 1

    .line 2355
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    return-object v0
.end method

.method public static getSha1MacAddress()Ljava/lang/String;
    .registers 3

    .line 2370
    nop

    .line 2374
    :try_start_1
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    .line 2379
    goto :goto_22

    .line 2376
    :catch_8
    move-exception v0

    .line 2378
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error generating sha1 of macAddress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2381
    :goto_22
    return-object v0
.end method

.method public static getSupportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "currencyId"    # Ljava/lang/String;

    .line 2412
    if-nez p0, :cond_4

    .line 2413
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    .line 2416
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "support_requests/new?currency_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&udid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&language_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2419
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2416
    return-object v0
.end method

.method public static getTimeStampAndVerifierParams()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 552
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 554
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 555
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    const/4 v4, 0x1

    invoke-static {v3, v1, v0, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 556
    const-string v0, "verifier"

    invoke-static {v3, v0, v2, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 558
    return-object v3
.end method

.method public static getURLParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 462
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 463
    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .registers 1

    .line 1652
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserToken()Ljava/lang/String;
    .registers 6

    .line 2427
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Z:Ljava/util/Map;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_51

    .line 2440
    :cond_b
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Z:Ljava/util/Map;

    .line 2441
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2443
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2444
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2445
    goto :goto_1a

    .line 2447
    :cond_33
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 2448
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    const-string v2, "userid"

    invoke-static {v1, v2, v0, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2450
    :cond_42
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 2451
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2453
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2429
    :cond_51
    :goto_51
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 2430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2433
    :cond_75
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    return-object v0
.end method

.method private static h()V
    .registers 1

    .line 370
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aW:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_7

    .line 371
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    .line 373
    :cond_7
    return-void
.end method

.method private static i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 512
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->j()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 513
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->o()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 515
    return-object v0
.end method

.method public static isConnected()Z
    .registers 1

    .line 2463
    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->af:Z

    return v0
.end method

.method public static isFullScreenViewOpen()Z
    .registers 2

    .line 2093
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2094
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    .line 2101
    goto :goto_a

    .line 2097
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    .line 2102
    :cond_20
    const/4 v0, 0x0

    return v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public static isLimitedConnected()Z
    .registers 1

    .line 2467
    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->aV:Z

    return v0
.end method

.method public static isUnitTestMode()Z
    .registers 2

    .line 2471
    const-string v0, "unit_test_mode"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isViewOpen()Z
    .registers 2

    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isViewOpen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private static j()Ljava/util/Map;
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

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->k()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 527
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->l()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 528
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->m()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 529
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->n()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 530
    invoke-static {}, Lcom/tapjoy/internal/gg;->a()Lcom/tapjoy/internal/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gg;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 533
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_58

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_58

    .line 534
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cached_ids"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 537
    :cond_58
    sget v1, Lcom/tapjoy/TapjoyConnectCore;->T:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "display_multiplier"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 539
    return-object v0
.end method

.method private static k()Ljava/util/Map;
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

    .line 586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 588
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->Q:Ljava/lang/String;

    const-string v2, "plugin"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 589
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    const-string v2, "sdk_type"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 591
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 592
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    const-string v2, "library_version"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 593
    const-string v1, "library_revision"

    const-string v2, "85e6740d9"

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 594
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->A:Ljava/lang/String;

    const-string v2, "bridge_version"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 595
    invoke-static {}, Lcom/tapjoy/internal/cf;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "omidpv"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 598
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    const-string v2, "app_version"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 600
    return-object v0
.end method

.method private static l()Ljava/util/Map;
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

    .line 609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 611
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    const-string v2, "device_name"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 612
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    const-string v2, "platform"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 613
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    const-string v2, "os_version"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 614
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->u:Ljava/lang/String;

    const-string v2, "device_manufacturer"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 615
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->v:Ljava/lang/String;

    const-string v2, "device_type"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_layout_size"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 617
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    const-string v2, "store_name"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 618
    sget-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->U:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "store_view"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 619
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    const-string v2, "carrier_name"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 620
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    const-string v2, "carrier_country_code"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 621
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->K:Ljava/lang/String;

    const-string v2, "mobile_network_code"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 622
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    const-string v2, "mobile_country_code"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 625
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country_code"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 626
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language_code"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 629
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    .line 630
    const-string v2, "connection_type"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 633
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionSubType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    .line 634
    const-string v2, "connection_subtype"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_density"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 639
    return-object v0
.end method

.method private static m()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 651
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->G()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 652
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    const-string v3, "advertising_id"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 653
    sget-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->d:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ad_tracking_enabled"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 657
    :cond_1e
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->H()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->G()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2a
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->I()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 659
    :cond_30
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "android_id"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 660
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    const-string v3, "mac_address"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 663
    :cond_3e
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    const-string v3, "install_id"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 665
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    const-string v3, "publisher_user_id"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 668
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    const-string v3, "ad_id_check_disabled"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 671
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->f:Ljava/lang/String;

    const-string v3, "legacy_id_fallback_allowed"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 673
    sget v1, Lcom/tapjoy/TapjoyConnectCore;->a:I

    if-eqz v1, :cond_67

    .line 674
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "packaged_gps_version"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 677
    :cond_67
    sget v1, Lcom/tapjoy/TapjoyConnectCore;->b:I

    if-eqz v1, :cond_74

    .line 678
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "device_gps_version"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 682
    :cond_74
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    if-eqz v1, :cond_94

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_94

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/tapjoy/TapjoyConnectCore;->ad:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1b7740

    cmp-long v1, v3, v5

    if-lez v1, :cond_8d

    goto :goto_94

    .line 686
    :cond_8d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/tapjoy/TapjoyConnectCore;->ad:J

    goto :goto_9a

    .line 683
    :cond_94
    :goto_94
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->J()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    .line 688
    :goto_9a
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    const-string v3, "session_id"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 690
    return-object v0
.end method

.method private static n()Ljava/util/Map;
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

    .line 699
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 700
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->V:Ljava/lang/String;

    const-string v2, "app_group_id"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 701
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    const-string v2, "store"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 702
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    const-string v2, "analytics_api_key"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 703
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    const-string v2, "managed_device_id"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 704
    return-object v0
.end method

.method private static o()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 715
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->s()V

    .line 716
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->p()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 717
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->q()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 718
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->r()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 720
    return-object v0
.end method

.method private static p()Ljava/util/Map;
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

    .line 729
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 731
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ak:Ljava/lang/String;

    const-string v2, "analytics_id"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 732
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->al:Ljava/lang/String;

    const-string v2, "pkg_id"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 733
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->am:Ljava/lang/String;

    const-string v2, "pkg_sign"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 734
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aM:Ljava/lang/Integer;

    const-string v2, "display_d"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 735
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aN:Ljava/lang/Integer;

    const-string v2, "display_w"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 736
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aO:Ljava/lang/Integer;

    const-string v2, "display_h"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 737
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aP:Ljava/lang/String;

    const-string v2, "country_sim"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 738
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aQ:Ljava/lang/String;

    const-string v2, "timezone"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 740
    return-object v0
.end method

.method private static q()Ljava/util/Map;
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

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 746
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->an:Ljava/lang/String;

    const-string v2, "pkg_ver"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 747
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ao:Ljava/lang/Integer;

    const-string v2, "pkg_rev"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 748
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ap:Ljava/lang/String;

    const-string v2, "pkg_data_ver"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 749
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aq:Ljava/lang/String;

    const-string v2, "installer"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 753
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 754
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aR:Ljava/lang/String;

    const-string v2, "store_name"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 757
    :cond_31
    return-object v0
.end method

.method private static r()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 761
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 763
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ar:Ljava/lang/Long;

    const-string v2, "installed"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 764
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->as:Ljava/lang/String;

    const-string v2, "referrer"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 767
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->at:Ljava/lang/Integer;

    const-string v2, "user_level"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 768
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->au:Ljava/lang/Integer;

    const-string v2, "friend_count"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 769
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->av:Ljava/lang/String;

    const-string v2, "uv1"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 770
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aw:Ljava/lang/String;

    const-string v2, "uv2"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 771
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ax:Ljava/lang/String;

    const-string v2, "uv3"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 772
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ay:Ljava/lang/String;

    const-string v2, "uv4"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 773
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->az:Ljava/lang/String;

    const-string v2, "uv5"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 774
    nop

    .line 775
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aA:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 776
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "user_tags["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 777
    move v2, v6

    goto :goto_4d

    .line 778
    :cond_75
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aB:Ljava/lang/Integer;

    const-string v2, "fq7"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 779
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aC:Ljava/lang/Integer;

    const-string v2, "fq30"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 782
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aD:Ljava/lang/Integer;

    const-string v2, "session_total_count"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 783
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aE:Ljava/lang/Long;

    const-string v2, "session_total_length"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 784
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aF:Ljava/lang/Long;

    const-string v2, "session_last_at"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 785
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aG:Ljava/lang/Long;

    const-string v2, "session_last_length"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 788
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aH:Ljava/lang/String;

    const-string v2, "purchase_currency"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 789
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aI:Ljava/lang/Integer;

    const-string v2, "purchase_total_count"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 790
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aJ:Ljava/lang/Double;

    const-string v2, "purchase_total_price"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 791
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aK:Ljava/lang/Double;

    const-string v2, "purchase_last_price"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 792
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aL:Ljava/lang/Long;

    const-string v2, "purchase_last_at"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 794
    return-object v0
.end method

.method public static requestLimitedTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)V
    .registers 7
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "tapjoyConnectListener"    # Lcom/tapjoy/TJConnectListener;

    .line 297
    const-string v0, "TapjoyConnect"

    :try_start_2
    new-instance v1, Lcom/tapjoy/internal/fp;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/fp;-><init>(Ljava/lang/String;)V

    .line 298
    nop

    .line 5150
    iget-object v2, v1, Lcom/tapjoy/internal/fp;->a:Lcom/tapjoy/internal/fp$a;

    .line 298
    sget-object v3, Lcom/tapjoy/internal/fp$a;->a:Lcom/tapjoy/internal/fp$a;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c} :catch_7c

    if-ne v2, v3, :cond_74

    .line 304
    nop

    .line 306
    nop

    .line 6142
    iget-object v2, v1, Lcom/tapjoy/internal/fp;->b:Ljava/lang/String;

    .line 306
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aS:Ljava/lang/String;

    .line 307
    nop

    .line 6146
    iget-object v1, v1, Lcom/tapjoy/internal/fp;->c:Ljava/lang/String;

    .line 307
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aT:Ljava/lang/String;

    .line 309
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    if-nez v1, :cond_24

    .line 310
    new-instance v1, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore;-><init>()V

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 312
    :cond_24
    sput-object p2, Lcom/tapjoy/TapjoyConnectCore;->aW:Lcom/tapjoy/TJConnectListener;

    .line 313
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 6340
    :try_start_28
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->a(Landroid/content/Context;)Z

    .line 6342
    nop

    .line 6392
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tapjoy/TapjoyConnectCore$2;

    invoke-direct {v3, v1}, Lcom/tapjoy/TapjoyConnectCore$2;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6398
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_39
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_28 .. :try_end_39} :catch_54
    .catch Lcom/tapjoy/TapjoyException; {:try_start_28 .. :try_end_39} :catch_3a

    goto :goto_6d

    .line 6348
    :catch_3a
    move-exception v1

    .line 6349
    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 6350
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->h()V

    .line 6351
    sget-object v1, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_6e

    .line 6344
    :catch_54
    move-exception v1

    .line 6345
    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 6346
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->h()V

    .line 6347
    sget-object v1, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    .line 6352
    :goto_6d
    nop

    .line 315
    :goto_6e
    const-string v1, "requestTapjoyConnect function complete"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void

    .line 299
    :cond_74
    :try_start_74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The given API key was not for Android."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "apiKey":Ljava/lang/String;
    .end local p2    # "tapjoyConnectListener":Lcom/tapjoy/TJConnectListener;
    throw v1
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_74 .. :try_end_7c} :catch_7c

    .line 301
    .restart local p0    # "applicationContext":Landroid/content/Context;
    .restart local p1    # "apiKey":Ljava/lang/String;
    .restart local p2    # "tapjoyConnectListener":Lcom/tapjoy/TJConnectListener;
    :catch_7c
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 225
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 4
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 236
    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V

    .line 237
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V
    .registers 8
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p3, "tapjoyConnectListener"    # Lcom/tapjoy/TJConnectListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")V"
        }
    .end annotation

    .line 256
    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const-string v0, "TapjoyConnect"

    :try_start_2
    new-instance v1, Lcom/tapjoy/internal/fp;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/fp;-><init>(Ljava/lang/String;)V

    .line 257
    nop

    .line 3150
    iget-object v2, v1, Lcom/tapjoy/internal/fp;->a:Lcom/tapjoy/internal/fp$a;

    .line 257
    sget-object v3, Lcom/tapjoy/internal/fp$a;->a:Lcom/tapjoy/internal/fp$a;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c} :catch_94

    if-ne v2, v3, :cond_8c

    .line 262
    nop

    .line 264
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/lang/String;

    .line 265
    nop

    .line 4142
    iget-object v2, v1, Lcom/tapjoy/internal/fp;->b:Ljava/lang/String;

    .line 265
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    .line 266
    nop

    .line 4146
    iget-object v2, v1, Lcom/tapjoy/internal/fp;->c:Ljava/lang/String;

    .line 266
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    .line 267
    nop

    .line 4154
    iget-object v1, v1, Lcom/tapjoy/internal/fp;->d:Ljava/lang/String;

    .line 267
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    .line 269
    if-eqz p2, :cond_2e

    .line 270
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 271
    invoke-static {}, Lcom/tapjoy/internal/gc;->b()Lcom/tapjoy/internal/ga;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/tapjoy/internal/ga;->a(Ljava/util/Hashtable;)V

    .line 273
    :cond_2e
    invoke-static {p0}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object v1

    .line 4192
    iput-object p1, v1, Lcom/tapjoy/internal/hb;->i:Ljava/lang/String;

    .line 275
    sput-object p3, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    .line 277
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    if-nez v1, :cond_41

    .line 278
    new-instance v1, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore;-><init>()V

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 280
    :cond_41
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 4321
    :try_start_43
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->a(Landroid/content/Context;)Z

    .line 4323
    nop

    .line 4381
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tapjoy/TapjoyConnectCore$1;

    invoke-direct {v3, v1}, Lcom/tapjoy/TapjoyConnectCore$1;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4387
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 4324
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tapjoy/TapjoyConnectCore;->ae:Z
    :try_end_57
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_43 .. :try_end_57} :catch_72
    .catch Lcom/tapjoy/TapjoyException; {:try_start_43 .. :try_end_57} :catch_58

    .line 4334
    return-void

    .line 4330
    :catch_58
    move-exception v1

    .line 4331
    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 4332
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()V

    .line 4333
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    .line 281
    return-void

    .line 4326
    :catch_72
    move-exception v1

    .line 4327
    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 4328
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()V

    .line 4329
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    .line 4334
    return-void

    .line 258
    :cond_8c
    :try_start_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was not for Android."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "apiKey":Ljava/lang/String;
    .end local p2    # "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    .end local p3    # "tapjoyConnectListener":Lcom/tapjoy/TJConnectListener;
    throw v0
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_94} :catch_94

    .line 260
    .restart local p0    # "applicationContext":Landroid/content/Context;
    .restart local p1    # "apiKey":Ljava/lang/String;
    .restart local p2    # "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    .restart local p3    # "tapjoyConnectListener":Lcom/tapjoy/TJConnectListener;
    :catch_94
    move-exception v0

    .line 261
    new-instance v1, Lcom/tapjoy/TapjoyIntegrationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static s()V
    .registers 3

    .line 856
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->a(Z)Lcom/tapjoy/internal/fc;

    move-result-object v0

    .line 858
    iget-object v1, v0, Lcom/tapjoy/internal/fc;->d:Lcom/tapjoy/internal/fb;

    .line 860
    iget-object v2, v1, Lcom/tapjoy/internal/fb;->h:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->ak:Ljava/lang/String;

    .line 861
    iget-object v2, v1, Lcom/tapjoy/internal/fb;->r:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->al:Ljava/lang/String;

    .line 862
    iget-object v2, v1, Lcom/tapjoy/internal/fb;->s:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->am:Ljava/lang/String;

    .line 863
    iget-object v2, v1, Lcom/tapjoy/internal/fb;->m:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aM:Ljava/lang/Integer;

    .line 864
    iget-object v2, v1, Lcom/tapjoy/internal/fb;->n:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aN:Ljava/lang/Integer;

    .line 865
    iget-object v2, v1, Lcom/tapjoy/internal/fb;->o:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aO:Ljava/lang/Integer;

    .line 866
    iget-object v2, v1, Lcom/tapjoy/internal/fb;->u:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aP:Ljava/lang/String;

    .line 867
    iget-object v1, v1, Lcom/tapjoy/internal/fb;->q:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aQ:Ljava/lang/String;

    .line 869
    iget-object v1, v0, Lcom/tapjoy/internal/fc;->e:Lcom/tapjoy/internal/ev;

    .line 870
    iget-object v2, v1, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->an:Ljava/lang/String;

    .line 871
    iget-object v2, v1, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->ao:Ljava/lang/Integer;

    .line 872
    iget-object v2, v1, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->ap:Ljava/lang/String;

    .line 873
    iget-object v2, v1, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aq:Ljava/lang/String;

    .line 874
    iget-object v1, v1, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aR:Ljava/lang/String;

    .line 876
    iget-object v0, v0, Lcom/tapjoy/internal/fc;->f:Lcom/tapjoy/internal/fi;

    .line 877
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->s:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ar:Ljava/lang/Long;

    .line 878
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->t:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->as:Ljava/lang/String;

    .line 879
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->J:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->at:Ljava/lang/Integer;

    .line 880
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->K:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->au:Ljava/lang/Integer;

    .line 881
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->L:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->av:Ljava/lang/String;

    .line 882
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->M:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aw:Ljava/lang/String;

    .line 883
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->N:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ax:Ljava/lang/String;

    .line 884
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->O:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ay:Ljava/lang/String;

    .line 885
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->P:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->az:Ljava/lang/String;

    .line 886
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/tapjoy/internal/fi;->Q:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aA:Ljava/util/Set;

    .line 887
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->u:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aB:Ljava/lang/Integer;

    .line 888
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->v:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aC:Ljava/lang/Integer;

    .line 889
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->x:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aD:Ljava/lang/Integer;

    .line 890
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->y:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aE:Ljava/lang/Long;

    .line 891
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->z:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aF:Ljava/lang/Long;

    .line 892
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->A:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aG:Ljava/lang/Long;

    .line 893
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->B:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aH:Ljava/lang/String;

    .line 894
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->C:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aI:Ljava/lang/Integer;

    .line 895
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->D:Ljava/lang/Double;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aJ:Ljava/lang/Double;

    .line 896
    iget-object v1, v0, Lcom/tapjoy/internal/fi;->F:Ljava/lang/Double;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aK:Ljava/lang/Double;

    .line 897
    iget-object v0, v0, Lcom/tapjoy/internal/fi;->E:Ljava/lang/Long;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->aL:Ljava/lang/Long;

    .line 898
    return-void
.end method

.method public static setCustomParameter(Ljava/lang/String;)V
    .registers 1
    .param p0, "customParam"    # Ljava/lang/String;

    .line 2518
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    .line 2519
    return-void
.end method

.method public static setPlugin(Ljava/lang/String;)V
    .registers 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1993
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->Q:Ljava/lang/String;

    .line 1994
    return-void
.end method

.method public static setSDKType(Ljava/lang/String;)V
    .registers 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2002
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    .line 2003
    return-void
.end method

.method public static setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .registers 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/tapjoy/TJSetUserIDListener;

    .line 2012
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    .line 2013
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    .line 2015
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URL parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$3;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2043
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2044
    return-void
.end method

.method public static setViewShowing(Z)V
    .registers 4
    .param p0, "showing"    # Z

    .line 2112
    if-eqz p0, :cond_f

    .line 2113
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2116
    :cond_f
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2118
    return-void
.end method

.method private static t()V
    .registers 6

    .line 906
    const-string v0, "TapjoyConnect"

    const-string v1, "Connect Flags:"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v1, "--------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 910
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 912
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 914
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 915
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    goto :goto_16

    .line 918
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hostURL: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "TJC_OPTION_SERVICE_URL"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "redirectDomain: ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->S:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method private static u()V
    .registers 3

    .line 931
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 935
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    .line 940
    :cond_16
    :try_start_16
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ag:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_27} :catch_52

    .line 944
    nop

    .line 947
    const-string v0, "android"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->v:Ljava/lang/String;

    .line 948
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    .line 951
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    .line 952
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->u:Ljava/lang/String;

    .line 955
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    .line 958
    const-string v0, "12.8.1"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    .line 959
    const-string v0, "1.0.18"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->A:Ljava/lang/String;

    .line 961
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->v()V

    .line 962
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->w()V

    .line 963
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->x()V

    .line 964
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->y()V

    .line 965
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->z()V

    .line 966
    return-void

    .line 941
    :catch_52
    move-exception v0

    .line 943
    new-instance v1, Lcom/tapjoy/TapjoyException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static v()V
    .registers 3

    .line 979
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1e

    .line 981
    new-instance v0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 983
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensityDPI()I

    move-result v1

    sput v1, Lcom/tapjoy/TapjoyConnectCore;->B:I

    .line 984
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensityScale()F

    move-result v1

    sput v1, Lcom/tapjoy/TapjoyConnectCore;->C:F

    .line 985
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v0

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->D:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 993
    :cond_1e
    return-void

    .line 990
    :catch_1f
    move-exception v0

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting screen density/dimensions/layout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    return-void
.end method

.method public static viewDidClose(Ljava/lang/String;)V
    .registers 3
    .param p0, "contentViewId"    # Ljava/lang/String;

    .line 2070
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewDidClose: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    sget-object v0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ft$a;->notifyObservers()V

    .line 2073
    return-void
.end method

.method public static viewWillOpen(Ljava/lang/String;I)V
    .registers 4
    .param p0, "contentViewId"    # Ljava/lang/String;
    .param p1, "viewType"    # I

    .line 2080
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewWillOpen: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    return-void
.end method

.method private static w()V
    .registers 4

    .line 1002
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->f(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TapjoyConnect"

    if-eqz v0, :cond_4b

    .line 1006
    :try_start_a
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1008
    if-eqz v0, :cond_32

    .line 1010
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1012
    if-eqz v0, :cond_32

    .line 1014
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1016
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 1019
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_33

    .line 1027
    :cond_32
    return-void

    .line 1024
    :catch_33
    move-exception v0

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting device mac address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    return-void

    .line 1031
    :cond_4b
    const-string v0, "*** ignore macAddress"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method private static x()V
    .registers 3

    .line 1040
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1041
    if-eqz v0, :cond_43

    .line 1044
    :try_start_c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    .line 1045
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    .line 1050
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 1051
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3a

    .line 1053
    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    .line 1054
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->K:Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_3a} :catch_3b

    .line 1058
    :cond_3a
    return-void

    .line 1056
    :catch_3b
    move-exception v0

    .line 1057
    const-string v0, "TapjoyConnect"

    const-string v1, "Error accessing network operator info"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_43
    return-void
.end method

.method private static y()V
    .registers 5

    .line 1068
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1069
    const-string v1, "tapjoyInstallId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1070
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_64

    .line 1075
    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    .line 1077
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1078
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1079
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4a} :catch_4b

    .line 1084
    return-void

    .line 1081
    :catch_4b
    move-exception v0

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error generating install id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_64
    return-void
.end method

.method private static z()V
    .registers 4

    .line 1097
    const-string v0, "TJC_OPTION_STORE_NAME"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapjoyConnect"

    if-eqz v1, :cond_41

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 1099
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/TapjoyConnectFlag;->STORE_ARRAY:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1105
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning -- undefined STORE_NAME: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_41
    :try_start_41
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->e(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->U:Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_4a

    .line 1119
    return-void

    .line 1116
    :catch_4a
    move-exception v0

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error trying to detect store intent on devicee: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .registers 6
    .param p1, "actionID"    # Ljava/lang/String;

    .line 2157
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "actionComplete: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->i()Ljava/util/Map;

    move-result-object v0

    .line 2162
    const-string v2, "app_id"

    const/4 v3, 0x1

    invoke-static {v0, v2, p1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2163
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2165
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PPA URL parameters: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tapjoy/TapjoyConnectCore$PPAThread;

    invoke-direct {v2, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$PPAThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2168
    return-void
.end method

.method public appPause()V
    .registers 2

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ac:Z

    .line 440
    return-void
.end method

.method public appResume()V
    .registers 2

    .line 448
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ac:Z

    if-eqz v0, :cond_a

    .line 450
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->J()Ljava/lang/String;

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ac:Z

    .line 453
    :cond_a
    return-void
.end method

.method public completeConnectCall()V
    .registers 9

    .line 2175
    const-string v0, "TapjoyConnect"

    const-string v1, "starting connect call..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    nop

    .line 2180
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://ws.tapjoyads.com/"

    if-eq v1, v2, :cond_15

    .line 2181
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    .line 2180
    :cond_15
    const-string v1, "https://connect.tapjoy.com/"

    .line 2184
    :goto_17
    nop

    .line 2185
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4e

    .line 2186
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->L()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/tapjoy/TapjoyAppSettings;->getConnectResult(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 2187
    if-eqz v2, :cond_4e

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2188
    const-string v2, "Connect using stored connect result"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    sput-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->af:Z

    .line 2190
    nop

    .line 2192
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    if-eqz v2, :cond_47

    .line 2193
    invoke-interface {v2}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 2195
    :cond_47
    sget-object v2, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/ft$a;->notifyObservers()V

    const/4 v2, 0x1

    goto :goto_4f

    .line 2199
    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "api/connect/v3.json?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v7, v6}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 2202
    if-eqz v1, :cond_e6

    iget v5, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_e6

    .line 2204
    iget-object v1, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 2205
    const-string v1, "Successfully connected to Tapjoy"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    sput-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->af:Z

    .line 2209
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v1

    .line 2210
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    goto :goto_90

    .line 2214
    :cond_c3
    if-nez v2, :cond_d1

    .line 2215
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_cc

    .line 2216
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 2218
    :cond_cc
    sget-object v0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ft$a;->notifyObservers()V

    .line 2220
    :cond_d1
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    .line 2221
    return-void

    .line 2223
    :cond_d9
    if-nez v2, :cond_de

    .line 2224
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()V

    .line 2226
    :cond_de
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    return-void

    .line 2232
    :cond_e6
    if-nez v2, :cond_eb

    .line 2233
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()V

    .line 2235
    :cond_eb
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    .line 2237
    return-void
.end method

.method public completeLimitedConnectCall()V
    .registers 6

    .line 2244
    nop

    .line 2247
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://ws.tapjoyads.com/"

    if-eq v0, v1, :cond_e

    .line 2248
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 2247
    :cond_e
    const-string v0, "https://connect.tapjoy.com/"

    .line 2250
    :goto_10
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedURLParams()Ljava/util/Map;

    move-result-object v1

    .line 2252
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "api/connect/v3.json?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 2255
    if-eqz v0, :cond_a6

    iget v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_a6

    .line 2257
    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2258
    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully connected to Tapjoy"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->aV:Z

    .line 2262
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedGenericURLParams()Ljava/util/Map;

    move-result-object v1

    .line 2264
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    goto :goto_54

    .line 2268
    :cond_87
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aW:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_8e

    .line 2269
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 2271
    :cond_8e
    sget-object v0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ft$a;->notifyObservers()V

    .line 2272
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    .line 2273
    return-void

    .line 2275
    :cond_9b
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->h()V

    .line 2276
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    return-void

    .line 2282
    :cond_a6
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->h()V

    .line 2283
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft$a;->notifyObservers(Ljava/lang/Object;)V

    .line 2285
    return-void
.end method

.method public getCurrencyMultiplier()F
    .registers 2

    .line 2327
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->T:F

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 1984
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ae:Z

    return v0
.end method

.method public release()V
    .registers 3

    .line 1617
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 1618
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    .line 1620
    const-string v0, "TapjoyConnect"

    const-string v1, "Releasing core static instance."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .registers 4
    .param p1, "multiplier"    # F

    .line 2317
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVirtualCurrencyMultiplier: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    sput p1, Lcom/tapjoy/TapjoyConnectCore;->T:F

    .line 2319
    return-void
.end method
