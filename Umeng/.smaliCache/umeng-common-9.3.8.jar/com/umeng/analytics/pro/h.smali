.class public Lcom/umeng/analytics/pro/h;
.super Ljava/lang/Object;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/h$a;,
        Lcom/umeng/analytics/pro/h$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x801

.field public static final b:I = 0x802

.field private static final c:I = 0x3e8

.field private static d:Landroid/content/Context; = null

.field private static e:Ljava/lang/String; = null

.field private static final f:Ljava/lang/String; = "umeng+"

.field private static final g:Ljava/lang/String; = "ek__id"

.field private static final h:Ljava/lang/String; = "ek_key"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    .line 51
    sput-object v0, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/h$1;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/umeng/analytics/pro/h;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;
    .registers 3

    .line 79
    invoke-static {}, Lcom/umeng/analytics/pro/h$b;->a()Lcom/umeng/analytics/pro/h;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    if-nez v1, :cond_13

    .line 81
    if-eqz p0, :cond_13

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    .line 83
    invoke-direct {v0}, Lcom/umeng/analytics/pro/h;->k()V

    .line 86
    :cond_13
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .registers 24

    .line 933
    move-object/from16 v1, p0

    .line 934
    nop

    .line 935
    nop

    .line 937
    const/4 v2, 0x0

    :try_start_5
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_f} :catch_268
    .catchall {:try_start_5 .. :try_end_f} :catchall_252

    .line 938
    :try_start_f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 939
    const-string v0, "select *  from __sd"

    .line 941
    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_f .. :try_end_18} :catch_24d
    .catchall {:try_start_f .. :try_end_18} :catchall_248

    .line 942
    if-eqz v4, :cond_21f

    .line 944
    :try_start_1a
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 945
    nop

    .line 947
    :goto_20
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1e2

    .line 948
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 949
    const-string v6, "__f"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 950
    const-string v7, "__e"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 951
    const-string v8, "__g"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 952
    const-string v9, "__ii"

    .line 953
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1a .. :try_end_53} :catch_21a
    .catchall {:try_start_1a .. :try_end_53} :catchall_215

    .line 955
    nop

    .line 956
    :try_start_54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1c6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1c6

    .line 957
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 958
    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_1bc

    .line 959
    const-string v9, "__a"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 960
    const-string v10, "__b"

    .line 961
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 962
    const-string v13, "__c"

    .line 963
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 964
    const-string v14, "__d"

    .line 965
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 966
    iget-object v15, v1, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    const-string v15, "__sp"

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 968
    const-string v11, "__pp"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 969
    const-string v12, "id"

    invoke-virtual {v5, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 970
    const-string v12, "start_time"

    invoke-virtual {v5, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 971
    const-string v12, "end_time"

    invoke-virtual {v5, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 972
    const-string v12, "header_foreground_count"

    invoke-static {v12}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v12
    :try_end_c5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_54 .. :try_end_c5} :catch_1da
    .catchall {:try_start_54 .. :try_end_c5} :catchall_1d2

    move-object/from16 v18, v2

    const-string v2, "duration"

    if-eqz v12, :cond_110

    .line 973
    :try_start_cb
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_cf
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_cb .. :try_end_cf} :catch_10d
    .catchall {:try_start_cb .. :try_end_cf} :catchall_10a

    .line 974
    const-wide/16 v16, 0x0

    cmp-long v12, v19, v16

    if-gtz v12, :cond_f1

    .line 975
    nop

    .line 976
    :try_start_d6
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v16, v6

    .line 975
    invoke-virtual {v5, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_e3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d6 .. :try_end_e3} :catch_ec
    .catchall {:try_start_d6 .. :try_end_e3} :catchall_e7

    move-object v12, v3

    move-object/from16 v16, v4

    goto :goto_109

    .line 1043
    :catchall_e7
    move-exception v0

    move-object v12, v3

    move-object v2, v4

    goto/16 :goto_256

    .line 1040
    :catch_ec
    move-exception v0

    move-object v12, v3

    move-object v2, v4

    goto/16 :goto_26c

    .line 978
    :cond_f1
    move-object v12, v3

    move-object/from16 v16, v4

    :try_start_f4
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v5, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 979
    const-string v2, "duration_old"

    .line 980
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v3, v6

    .line 979
    invoke-virtual {v5, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 982
    :goto_109
    goto :goto_11f

    .line 1043
    :catchall_10a
    move-exception v0

    goto/16 :goto_1d5

    .line 1040
    :catch_10d
    move-exception v0

    goto/16 :goto_1dd

    .line 984
    :cond_110
    move-object v12, v3

    move-object/from16 v16, v4

    .line 985
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v3, v6

    .line 984
    invoke-virtual {v5, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 988
    :goto_11f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_133

    .line 989
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1, v9}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 990
    const-string v3, "pages"

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 992
    :cond_133
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15c

    sget-object v2, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v3, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne v2, v3, :cond_15c

    .line 994
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 995
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 997
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_157

    .line 998
    invoke-direct {v1, v2}, Lcom/umeng/analytics/pro/h;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1000
    :cond_157
    const-string v2, "autopages"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    :cond_15c
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_170

    .line 1003
    const-string v2, "traffic"

    new-instance v3, Lorg/json/JSONObject;

    .line 1004
    invoke-virtual {v1, v13}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    :cond_170
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_184

    .line 1007
    const-string v2, "locations"

    new-instance v3, Lorg/json/JSONArray;

    .line 1008
    invoke-virtual {v1, v14}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1010
    :cond_184
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_198

    .line 1011
    const-string v2, "_$sp"

    new-instance v3, Lorg/json/JSONObject;

    .line 1012
    invoke-virtual {v1, v15}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1014
    :cond_198
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ac

    .line 1015
    const-string v2, "_$pp"

    new-instance v3, Lorg/json/JSONObject;

    .line 1016
    invoke-virtual {v1, v11}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1018
    :cond_1ac
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1c1

    .line 1019
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1b5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_f4 .. :try_end_1b5} :catch_1b9
    .catchall {:try_start_f4 .. :try_end_1b5} :catchall_1b6

    goto :goto_1c1

    .line 1043
    :catchall_1b6
    move-exception v0

    goto/16 :goto_23f

    .line 1040
    :catch_1b9
    move-exception v0

    goto/16 :goto_245

    .line 958
    :cond_1bc
    move-object/from16 v18, v2

    move-object v12, v3

    move-object/from16 v16, v4

    .line 1023
    :cond_1c1
    :goto_1c1
    if-eqz p2, :cond_1cb

    .line 1024
    move-object/from16 v2, v18

    goto :goto_1e5

    .line 956
    :cond_1c6
    move-object/from16 v18, v2

    move-object v12, v3

    move-object/from16 v16, v4

    .line 1027
    :cond_1cb
    move-object v3, v12

    move-object/from16 v4, v16

    move-object/from16 v2, v18

    goto/16 :goto_20

    .line 1043
    :catchall_1d2
    move-exception v0

    move-object/from16 v18, v2

    :goto_1d5
    move-object v12, v3

    move-object/from16 v16, v4

    goto/16 :goto_23f

    .line 1040
    :catch_1da
    move-exception v0

    move-object/from16 v18, v2

    :goto_1dd
    move-object v12, v3

    move-object/from16 v16, v4

    goto/16 :goto_245

    .line 947
    :cond_1e2
    move-object v12, v3

    move-object/from16 v16, v4

    .line 1029
    :goto_1e5
    :try_start_1e5
    iget-object v3, v1, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_1eb
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1e5 .. :try_end_1eb} :catch_242
    .catchall {:try_start_1e5 .. :try_end_1eb} :catchall_23c

    const/4 v4, 0x1

    if-ge v3, v4, :cond_206

    .line 1030
    nop

    .line 1046
    if-eqz v16, :cond_1f4

    .line 1047
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1050
    :cond_1f4
    if-eqz v12, :cond_1fb

    .line 1051
    :try_start_1f6
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1f9
    .catchall {:try_start_1f6 .. :try_end_1f9} :catchall_1fa

    goto :goto_1fb

    .line 1053
    :catchall_1fa
    move-exception v0

    :cond_1fb
    :goto_1fb
    nop

    .line 1054
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    return-object v2

    .line 1032
    :cond_206
    :try_start_206
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_213

    .line 1033
    const-string v3, "sessions"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1035
    :cond_213
    nop

    .line 1036
    goto :goto_222

    .line 1043
    :catchall_215
    move-exception v0

    move-object v12, v3

    move-object/from16 v16, v4

    goto :goto_23d

    .line 1040
    :catch_21a
    move-exception v0

    move-object v12, v3

    move-object/from16 v16, v4

    goto :goto_243

    .line 942
    :cond_21f
    move-object v12, v3

    move-object/from16 v16, v4

    .line 1038
    :goto_222
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_225
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_206 .. :try_end_225} :catch_242
    .catchall {:try_start_206 .. :try_end_225} :catchall_23c

    .line 1046
    if-eqz v16, :cond_22a

    .line 1047
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1050
    :cond_22a
    if-eqz v12, :cond_231

    .line 1051
    :try_start_22c
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_22f
    .catchall {:try_start_22c .. :try_end_22f} :catchall_230

    goto :goto_231

    .line 1053
    :catchall_230
    move-exception v0

    :cond_231
    :goto_231
    nop

    .line 1054
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1055
    goto :goto_289

    .line 1043
    :catchall_23c
    move-exception v0

    :goto_23d
    move-object/from16 v18, v2

    :goto_23f
    move-object/from16 v2, v16

    goto :goto_256

    .line 1040
    :catch_242
    move-exception v0

    :goto_243
    move-object/from16 v18, v2

    :goto_245
    move-object/from16 v2, v16

    goto :goto_26c

    .line 1043
    :catchall_248
    move-exception v0

    move-object v12, v3

    move-object/from16 v18, v2

    goto :goto_256

    .line 1040
    :catch_24d
    move-exception v0

    move-object v12, v3

    move-object/from16 v18, v2

    goto :goto_26c

    .line 1043
    :catchall_252
    move-exception v0

    move-object v12, v2

    move-object/from16 v18, v12

    .line 1044
    :goto_256
    :try_start_256
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_25b
    .catchall {:try_start_256 .. :try_end_25b} :catchall_28a

    .line 1046
    if-eqz v2, :cond_260

    .line 1047
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1050
    :cond_260
    if-eqz v12, :cond_27d

    .line 1051
    :try_start_262
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_265
    .catchall {:try_start_262 .. :try_end_265} :catchall_266

    goto :goto_27d

    .line 1053
    :catchall_266
    move-exception v0

    goto :goto_27d

    .line 1040
    :catch_268
    move-exception v0

    move-object v12, v2

    move-object/from16 v18, v12

    .line 1042
    :goto_26c
    :try_start_26c
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_271
    .catchall {:try_start_26c .. :try_end_271} :catchall_28a

    .line 1046
    if-eqz v2, :cond_276

    .line 1047
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1050
    :cond_276
    if-eqz v12, :cond_27d

    .line 1051
    :try_start_278
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_27b
    .catchall {:try_start_278 .. :try_end_27b} :catchall_27c

    goto :goto_27d

    .line 1053
    :catchall_27c
    move-exception v0

    :cond_27d
    :goto_27d
    nop

    .line 1054
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1055
    move-object/from16 v2, v18

    .line 1056
    :goto_289
    return-object v2

    .line 1046
    :catchall_28a
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_291

    .line 1047
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1050
    :cond_291
    if-eqz v12, :cond_298

    .line 1051
    :try_start_293
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_296
    .catchall {:try_start_293 .. :try_end_296} :catchall_297

    goto :goto_298

    .line 1053
    :catchall_297
    move-exception v0

    :cond_298
    :goto_298
    nop

    .line 1054
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_2a4

    :goto_2a3
    throw v3

    :goto_2a4
    goto :goto_2a3
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16

    .line 309
    const-string v0, "__pp"

    const-string v1, "__sp"

    const-string v2, "__g"

    const-string v3, "\", "

    const-string v4, "=\""

    :try_start_a
    const-string v5, "__f"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 310
    const-wide/16 v7, 0x0

    .line 311
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 312
    if-eqz v9, :cond_28

    .line 313
    instance-of v10, v9, Ljava/lang/Long;

    if-eqz v10, :cond_28

    .line 314
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 318
    :cond_28
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 319
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_b7

    .line 320
    nop

    .line 321
    nop

    .line 322
    const-string v10, ""

    if-eqz v9, :cond_45

    :try_start_36
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_45

    .line 323
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_46

    .line 325
    :cond_45
    move-object v9, v10

    :goto_46
    if-eqz p2, :cond_56

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_56

    .line 326
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 329
    :cond_56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update __sd set __f=\""

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\" where "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "__ii"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_36 .. :try_end_b6} :catchall_b7

    .line 339
    goto :goto_b8

    .line 337
    :catchall_b7
    move-exception p1

    .line 340
    :goto_b8
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 487
    const-string v0, "=\""

    const-string v1, "__ii"

    const-string v2, "__b"

    const-string v3, "__a"

    .line 489
    nop

    .line 490
    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 491
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 492
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_33

    .line 549
    :cond_1c
    nop

    .line 493
    return-void

    .line 495
    :cond_1e
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 496
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 497
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_33

    .line 549
    :cond_30
    nop

    .line 498
    return-void

    .line 495
    :cond_32
    move-object p2, v4

    .line 502
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "__sd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-virtual {p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_6c
    .catchall {:try_start_a .. :try_end_6c} :catchall_107

    .line 505
    nop

    .line 506
    if-eqz v2, :cond_86

    .line 507
    :goto_6f
    :try_start_6f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 508
    invoke-interface {v2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 509
    invoke-virtual {p0, v3}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6f

    .line 547
    :catchall_82
    move-exception p1

    move-object v4, v2

    goto/16 :goto_108

    .line 514
    :cond_86
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 515
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_96

    .line 516
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 520
    :cond_96
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_9a
    .catchall {:try_start_6f .. :try_end_9a} :catchall_82

    .line 521
    const/16 v6, 0x3e8

    if-le v4, v6, :cond_a4

    .line 549
    if-eqz v2, :cond_a3

    .line 550
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_a3
    return-void

    .line 524
    :cond_a4
    nop

    .line 525
    nop

    :goto_a6
    :try_start_a6
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_82

    if-ge v5, v4, :cond_bd

    .line 529
    :try_start_ac
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_b0} :catch_b7
    .catchall {:try_start_ac .. :try_end_b0} :catchall_82

    .line 533
    nop

    .line 534
    if-eqz v4, :cond_ba

    .line 535
    :try_start_b3
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_ba

    .line 530
    :catch_b7
    move-exception v4

    .line 531
    nop

    .line 532
    nop

    .line 525
    :cond_ba
    :goto_ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_a6

    .line 540
    :cond_bd
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 541
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_101

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update __sd set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "\" where "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_b3 .. :try_end_101} :catchall_82

    .line 549
    :cond_101
    if-eqz v2, :cond_10d

    .line 550
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_10d

    .line 547
    :catchall_107
    move-exception p1

    .line 549
    :goto_108
    if-eqz v4, :cond_10d

    .line 550
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_10d
    :goto_10d
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 13

    .line 666
    nop

    .line 667
    nop

    .line 669
    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_d} :catch_187
    .catchall {:try_start_3 .. :try_end_d} :catchall_173

    .line 670
    :try_start_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 671
    const-string v2, "select *  from __et"

    .line 672
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_26

    .line 673
    const-string v2, "select *  from __et where __i=?"

    .line 675
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    move-object v0, p2

    goto :goto_2b

    .line 677
    :cond_26
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    move-object v0, p2

    .line 681
    :goto_2b
    if-eqz v0, :cond_15f

    .line 683
    nop

    .line 685
    nop

    .line 687
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 688
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 689
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/t;->b()Ljava/lang/String;

    move-result-object v3

    .line 691
    :cond_41
    :goto_41
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 692
    const-string v5, "__t"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 693
    const-string v6, "__i"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 694
    const-string v7, "__s"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 700
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_73

    const-string v8, "-1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 701
    :cond_73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 702
    move-object v6, v3

    .line 708
    :cond_7a
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 710
    iget-object v9, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    packed-switch v5, :pswitch_data_1c0

    goto :goto_d6

    .line 726
    :pswitch_8b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d6

    .line 727
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 729
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_aa

    .line 731
    :cond_a5
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 733
    :goto_aa
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 734
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d6

    .line 714
    :pswitch_b1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d6

    .line 715
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 717
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_d0

    .line 719
    :cond_cb
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 721
    :goto_d0
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 722
    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    :cond_d6
    :goto_d6
    goto/16 :goto_41

    .line 742
    :cond_d8
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_11a

    .line 743
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 744
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 745
    nop

    .line 746
    :goto_e8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 747
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 748
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 749
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 750
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_10e

    .line 752
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 754
    :cond_10e
    goto :goto_e8

    .line 755
    :cond_10f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_11a

    .line 756
    const-string p2, "ekv"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    :cond_11a
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_15c

    .line 760
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 761
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 762
    nop

    .line 763
    :goto_12a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_151

    .line 764
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 765
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 766
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 767
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_150

    .line 769
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 771
    :cond_150
    goto :goto_12a

    .line 772
    :cond_151
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_15c

    .line 773
    const-string v2, "gkv"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    :cond_15c
    nop

    .line 778
    nop

    .line 779
    nop

    .line 782
    :cond_15f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_162
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d .. :try_end_162} :catch_171
    .catchall {:try_start_d .. :try_end_162} :catchall_16f

    .line 789
    if-eqz v0, :cond_167

    .line 790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_167
    if-eqz v1, :cond_19a

    .line 794
    :try_start_169
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_16d

    goto :goto_19a

    .line 796
    :catchall_16d
    move-exception p1

    goto :goto_19a

    .line 786
    :catchall_16f
    move-exception p1

    goto :goto_175

    .line 783
    :catch_171
    move-exception p1

    goto :goto_189

    .line 786
    :catchall_173
    move-exception p1

    move-object v1, v0

    .line 787
    :goto_175
    :try_start_175
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_17a
    .catchall {:try_start_175 .. :try_end_17a} :catchall_1a6

    .line 789
    if-eqz v0, :cond_17f

    .line 790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_17f
    if-eqz v1, :cond_19a

    .line 794
    :try_start_181
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_185

    goto :goto_19a

    .line 796
    :catchall_185
    move-exception p1

    goto :goto_19a

    .line 783
    :catch_187
    move-exception p1

    move-object v1, v0

    .line 785
    :goto_189
    :try_start_189
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_18e
    .catchall {:try_start_189 .. :try_end_18e} :catchall_1a6

    .line 789
    if-eqz v0, :cond_193

    .line 790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_193
    if-eqz v1, :cond_19a

    .line 794
    :try_start_195
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_199

    goto :goto_19a

    .line 796
    :catchall_199
    move-exception p1

    :cond_19a
    :goto_19a
    nop

    .line 797
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 798
    nop

    .line 800
    return-void

    .line 789
    :catchall_1a6
    move-exception p1

    if-eqz v0, :cond_1ac

    .line 790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_1ac
    if-eqz v1, :cond_1b3

    .line 794
    :try_start_1ae
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1b1
    .catchall {:try_start_1ae .. :try_end_1b1} :catchall_1b2

    goto :goto_1b3

    .line 796
    :catchall_1b2
    move-exception p2

    :cond_1b3
    :goto_1b3
    nop

    .line 797
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_1bf

    :goto_1be
    throw p1

    :goto_1bf
    goto :goto_1be

    :pswitch_data_1c0
    .packed-switch 0x801
        :pswitch_b1
        :pswitch_8b
    .end packed-switch
.end method

.method private b(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .registers 13

    .line 1067
    nop

    .line 1068
    nop

    .line 1069
    nop

    .line 1071
    const/4 v0, 0x0

    :try_start_4
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_e} :catch_e6
    .catchall {:try_start_4 .. :try_end_e} :catchall_d1

    .line 1072
    :try_start_e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1073
    const-string v2, "select *  from __is"

    .line 1075
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_e .. :try_end_17} :catch_ce
    .catchall {:try_start_e .. :try_end_17} :catchall_cb

    .line 1076
    if-eqz v2, :cond_a9

    .line 1078
    :try_start_19
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1079
    nop

    .line 1081
    :goto_1f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1082
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1084
    const-string v5, "__e"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1085
    const-string v6, "__ii"

    .line 1086
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1088
    nop

    .line 1089
    iget-object v6, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    const-string v6, "__sp"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1091
    const-string v7, "__pp"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6c

    .line 1093
    const-string v8, "_$sp"

    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1096
    :cond_6c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 1097
    const-string v6, "_$pp"

    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1100
    :cond_80
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9c

    .line 1102
    const-string v6, "id"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1103
    const-string v6, "start_time"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1105
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_99

    .line 1106
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1110
    :cond_99
    if-eqz p2, :cond_9c

    .line 1111
    goto :goto_9d

    .line 1114
    :cond_9c
    goto :goto_1f

    .line 1119
    :cond_9d
    :goto_9d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_a8

    .line 1120
    const-string p2, "sessions"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1122
    :cond_a8
    nop

    .line 1125
    :cond_a9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ac
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_19 .. :try_end_ac} :catch_c7
    .catchall {:try_start_19 .. :try_end_ac} :catchall_c3

    .line 1133
    if-eqz v2, :cond_b1

    .line 1134
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1137
    :cond_b1
    if-eqz v1, :cond_b8

    .line 1138
    :try_start_b3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b7

    goto :goto_b8

    .line 1140
    :catchall_b7
    move-exception p1

    :cond_b8
    :goto_b8
    nop

    .line 1141
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1142
    goto :goto_105

    .line 1130
    :catchall_c3
    move-exception p1

    move-object p1, v0

    move-object v0, v2

    goto :goto_d4

    .line 1127
    :catch_c7
    move-exception p1

    move-object p1, v0

    move-object v0, v2

    goto :goto_e9

    .line 1130
    :catchall_cb
    move-exception p1

    move-object p1, v0

    goto :goto_d4

    .line 1127
    :catch_ce
    move-exception p1

    move-object p1, v0

    goto :goto_e9

    .line 1130
    :catchall_d1
    move-exception p1

    move-object p1, v0

    move-object v1, p1

    .line 1131
    :goto_d4
    :try_start_d4
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_106

    .line 1133
    if-eqz v0, :cond_de

    .line 1134
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1137
    :cond_de
    if-eqz v1, :cond_fa

    .line 1138
    :try_start_e0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    goto :goto_fa

    .line 1140
    :catchall_e4
    move-exception p2

    goto :goto_fa

    .line 1127
    :catch_e6
    move-exception p1

    move-object p1, v0

    move-object v1, p1

    .line 1129
    :goto_e9
    :try_start_e9
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_ee
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_106

    .line 1133
    if-eqz v0, :cond_f3

    .line 1134
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1137
    :cond_f3
    if-eqz v1, :cond_fa

    .line 1138
    :try_start_f5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_f9

    goto :goto_fa

    .line 1140
    :catchall_f9
    move-exception p2

    :cond_fa
    :goto_fa
    nop

    .line 1141
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1142
    move-object v0, p1

    .line 1143
    :goto_105
    return-object v0

    .line 1133
    :catchall_106
    move-exception p1

    if-eqz v0, :cond_10c

    .line 1134
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1137
    :cond_10c
    if-eqz v1, :cond_113

    .line 1138
    :try_start_10e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    goto :goto_113

    .line 1140
    :catchall_112
    move-exception p2

    :cond_113
    :goto_113
    nop

    .line 1141
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_11f

    :goto_11e
    throw p1

    :goto_11f
    goto :goto_11e
.end method

.method private b(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 11

    .line 910
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 911
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 912
    nop

    .line 913
    nop

    .line 914
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_26

    .line 915
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 916
    if-eqz v3, :cond_23

    .line 917
    const-string v4, "duration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 918
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_23

    .line 919
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 914
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 923
    :cond_26
    return-object v0
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12

    .line 350
    const-string v0, "__pp"

    const-string v1, "__sp"

    const-string v2, "__e"

    :try_start_6
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 352
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 353
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_76

    .line 354
    nop

    .line 355
    nop

    .line 356
    const-string v6, ""

    if-eqz v5, :cond_2d

    :try_start_1e
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_2d

    .line 357
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2e

    .line 359
    :cond_2d
    move-object v5, v6

    :goto_2e
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_3e

    .line 360
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    :cond_3e
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 364
    const-string v7, "__ii"

    invoke-virtual {p2, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string p1, "__av"

    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string p1, "__vc"

    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string p1, "__is"

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_75
    .catchall {:try_start_1e .. :try_end_75} :catchall_76

    goto :goto_77

    .line 371
    :catchall_76
    move-exception p1

    .line 374
    :goto_77
    nop

    .line 375
    return-void
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8

    .line 809
    nop

    .line 810
    nop

    .line 812
    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_d} :catch_88
    .catchall {:try_start_3 .. :try_end_d} :catchall_74

    .line 813
    :try_start_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 814
    const-string v2, "select *  from __er"

    .line 815
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 816
    const-string v2, "select *  from __er where __i=?"

    .line 818
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    move-object v0, p2

    goto :goto_2b

    .line 820
    :cond_26
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    move-object v0, p2

    .line 824
    :goto_2b
    if-eqz v0, :cond_60

    .line 825
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 826
    :goto_32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 827
    const-string v2, "__a"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 829
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 831
    :cond_54
    goto :goto_32

    .line 832
    :cond_55
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_60

    .line 833
    const-string v2, "error"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    :cond_60
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d .. :try_end_63} :catch_72
    .catchall {:try_start_d .. :try_end_63} :catchall_70

    .line 845
    if-eqz v0, :cond_68

    .line 846
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 849
    :cond_68
    if-eqz v1, :cond_9b

    .line 850
    :try_start_6a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_9b

    .line 852
    :catchall_6e
    move-exception p1

    goto :goto_9b

    .line 842
    :catchall_70
    move-exception p1

    goto :goto_76

    .line 839
    :catch_72
    move-exception p1

    goto :goto_8a

    .line 842
    :catchall_74
    move-exception p1

    move-object v1, v0

    .line 843
    :goto_76
    :try_start_76
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_a7

    .line 845
    if-eqz v0, :cond_80

    .line 846
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 849
    :cond_80
    if-eqz v1, :cond_9b

    .line 850
    :try_start_82
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_9b

    .line 852
    :catchall_86
    move-exception p1

    goto :goto_9b

    .line 839
    :catch_88
    move-exception p1

    move-object v1, v0

    .line 841
    :goto_8a
    :try_start_8a
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_a7

    .line 845
    if-eqz v0, :cond_94

    .line 846
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 849
    :cond_94
    if-eqz v1, :cond_9b

    .line 850
    :try_start_96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9b

    .line 852
    :catchall_9a
    move-exception p1

    :cond_9b
    :goto_9b
    nop

    .line 853
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 854
    nop

    .line 855
    return-void

    .line 845
    :catchall_a7
    move-exception p1

    if-eqz v0, :cond_ad

    .line 846
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 849
    :cond_ad
    if-eqz v1, :cond_b4

    .line 850
    :try_start_af
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b4

    .line 852
    :catchall_b3
    move-exception p2

    :cond_b4
    :goto_b4
    nop

    .line 853
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_c0

    :goto_bf
    throw p1

    :goto_c0
    goto :goto_bf
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 13

    .line 415
    const-string v0, "__d"

    .line 418
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 421
    nop

    .line 422
    if-eqz v2, :cond_2b

    .line 423
    const-string v3, "select __d from __sd where __ii=?"

    .line 426
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p3, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_fe

    .line 427
    if-eqz v3, :cond_2c

    .line 428
    :goto_18
    :try_start_18
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 429
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_fb

    goto :goto_18

    .line 422
    :cond_2b
    move-object v3, v1

    .line 435
    :cond_2c
    const-string v0, "\""

    const-string v4, "=\""

    const-string v5, "__ii"

    const-string v6, "\" where "

    if-eqz v2, :cond_81

    .line 436
    :try_start_36
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 437
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 438
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 440
    :cond_46
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 442
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __d=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    :cond_81
    const-string v1, "__c"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_c1

    .line 453
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c1

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __c=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 461
    :cond_c1
    const-string v1, "__f"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 462
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __f=\""

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 463
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_36 .. :try_end_f5} :catchall_fb

    .line 468
    if-eqz v3, :cond_104

    .line 469
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_104

    .line 466
    :catchall_fb
    move-exception p1

    move-object v1, v3

    goto :goto_ff

    :catchall_fe
    move-exception p1

    .line 468
    :goto_ff
    if-eqz v1, :cond_104

    .line 469
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_104
    :goto_104
    return-void
.end method

.method private k()V
    .registers 2

    .line 90
    monitor-enter p0

    .line 91
    :try_start_1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/h;->l()V

    .line 92
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private l()V
    .registers 9

    .line 1429
    const-string v0, "ek_key"

    const-string v1, "ek__id"

    :try_start_4
    sget-object v2, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 1431
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1432
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1435
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1436
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1437
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1438
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genId()Ljava/lang/String;

    move-result-object v2

    .line 1440
    :cond_2d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 1442
    sget-object v3, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :cond_38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_84

    .line 1446
    const/16 v1, 0x9

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1449
    const/4 v5, 0x0

    :goto_4c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_7e

    .line 1450
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1451
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 1452
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6a

    .line 1453
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 1455
    :cond_6a
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 1458
    :cond_78
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1449
    :goto_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 1461
    :cond_7e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    .line 1463
    :cond_84
    sget-object v1, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    .line 1469
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1470
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_ba
    .catchall {:try_start_4 .. :try_end_ba} :catchall_df

    const-string v5, "umeng+"

    if-eqz v2, :cond_c8

    .line 1472
    :try_start_be
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_de

    .line 1474
    :cond_c8
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    .line 1475
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/h;->b(ZZ)V

    .line 1476
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/h;->a(ZZ)V

    .line 1477
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/h;->h()V

    .line 1478
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/h;->i()V
    :try_end_de
    .catchall {:try_start_be .. :try_end_de} :catchall_df

    .line 1485
    :cond_de
    :goto_de
    goto :goto_e0

    .line 1484
    :catchall_df
    move-exception v0

    .line 1486
    :goto_e0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .registers 9

    .line 383
    const-string v0, "select __f from __sd where __ii=?"

    .line 385
    nop

    .line 386
    nop

    .line 387
    nop

    .line 389
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_8
    sget-object v4, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_5a
    .catchall {:try_start_8 .. :try_end_12} :catchall_40

    .line 390
    :try_start_12
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 391
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_2e

    .line 393
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 394
    const-string p1, "__f"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_3e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_3c

    .line 401
    :cond_2e
    if-eqz v1, :cond_36

    .line 402
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_36

    .line 407
    :catch_34
    move-exception p1

    goto :goto_69

    .line 404
    :cond_36
    :goto_36
    if-eqz v4, :cond_69

    .line 405
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_34

    goto :goto_69

    .line 400
    :catchall_3c
    move-exception p1

    goto :goto_42

    .line 396
    :catch_3e
    move-exception p1

    goto :goto_5c

    .line 400
    :catchall_40
    move-exception p1

    move-object v4, v1

    .line 401
    :goto_42
    if-eqz v1, :cond_4a

    .line 402
    :try_start_44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    .line 407
    :catch_48
    move-exception v0

    goto :goto_4f

    .line 404
    :cond_4a
    :goto_4a
    if-eqz v4, :cond_4f

    .line 405
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_48

    .line 407
    :cond_4f
    :goto_4f
    nop

    .line 408
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1

    .line 396
    :catch_5a
    move-exception p1

    move-object v4, v1

    .line 401
    :goto_5c
    if-eqz v1, :cond_64

    .line 402
    :try_start_5e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_64

    .line 407
    :catch_62
    move-exception p1

    goto :goto_69

    .line 404
    :cond_64
    :goto_64
    if-eqz v4, :cond_69

    .line 405
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_69} :catch_62

    .line 407
    :cond_69
    :goto_69
    nop

    .line 408
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 409
    nop

    .line 410
    return-wide v2
.end method

.method public a(Z)Lorg/json/JSONObject;
    .registers 4

    .line 567
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/h;->a()V

    .line 568
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 570
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 572
    if-nez p1, :cond_1a

    .line 573
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    .line 574
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 575
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2a

    .line 586
    :cond_1a
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p1

    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 588
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 589
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 594
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public a()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 12

    .line 117
    const-string v0, "__t"

    const-string v1, "__i"

    .line 118
    nop

    .line 119
    nop

    .line 121
    const/4 v2, 0x0

    :try_start_7
    sget-object v3, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_11} :catch_b5
    .catchall {:try_start_7 .. :try_end_11} :catchall_a2

    .line 122
    :try_start_11
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 123
    const/4 v4, 0x0

    :goto_15
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_11 .. :try_end_19} :catch_9f
    .catchall {:try_start_11 .. :try_end_19} :catchall_9c

    if-ge v4, v5, :cond_91

    .line 125
    :try_start_1b
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 127
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_8d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1b .. :try_end_2c} :catch_9f
    .catchall {:try_start_1b .. :try_end_2c} :catchall_9c

    const-string v9, "-1"

    if-nez v8, :cond_36

    :try_start_30
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 132
    :cond_36
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v7

    invoke-virtual {v7}, Lcom/umeng/analytics/pro/t;->b()Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 134
    move-object v7, v9

    .line 137
    :cond_45
    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v7, "__e"

    const-string v8, "id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v7, "__av"

    sget-object v8, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v7, "__vc"

    sget-object v8, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    const-string v7, "__s"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v5, "__et"

    invoke-virtual {v3, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_8c} :catch_8d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_30 .. :try_end_8c} :catch_9f
    .catchall {:try_start_30 .. :try_end_8c} :catchall_9c

    .line 149
    goto :goto_8e

    .line 148
    :catch_8d
    move-exception v5

    .line 123
    :goto_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 151
    :cond_91
    :try_start_91
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_91 .. :try_end_94} :catch_9f
    .catchall {:try_start_91 .. :try_end_94} :catchall_9c

    .line 158
    if-eqz v3, :cond_aa

    .line 159
    :try_start_96
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_aa

    .line 161
    :catchall_9a
    move-exception p1

    goto :goto_aa

    .line 155
    :catchall_9c
    move-exception p1

    move-object v2, v3

    goto :goto_a3

    .line 152
    :catch_9f
    move-exception p1

    move-object v2, v3

    goto :goto_b6

    .line 155
    :catchall_a2
    move-exception p1

    .line 158
    :goto_a3
    if-eqz v2, :cond_aa

    .line 159
    :try_start_a5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_aa

    .line 161
    :catchall_a9
    move-exception p1

    :cond_aa
    :goto_aa
    nop

    .line 162
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 163
    goto :goto_c3

    .line 152
    :catch_b5
    move-exception p1

    .line 154
    :goto_b6
    :try_start_b6
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_c4

    .line 158
    if-eqz v2, :cond_aa

    .line 159
    :try_start_bd
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_aa

    .line 161
    :catchall_c1
    move-exception p1

    goto :goto_aa

    .line 164
    :goto_c3
    return-void

    .line 157
    :catchall_c4
    move-exception p1

    .line 158
    if-eqz v2, :cond_cc

    .line 159
    :try_start_c7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    goto :goto_cc

    .line 161
    :catchall_cb
    move-exception v0

    :cond_cc
    :goto_cc
    nop

    .line 162
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_d8

    :goto_d7
    throw p1

    :goto_d8
    goto :goto_d7
.end method

.method public a(ZLjava/lang/String;)V
    .registers 6

    .line 1354
    const-string p1, "\""

    .line 1357
    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1358
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1359
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __er where __i=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1363
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __et where __i=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1368
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1369
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __sd where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1374
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1377
    :cond_69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_6c} :catch_87
    .catchall {:try_start_3 .. :try_end_6c} :catchall_74

    .line 1384
    if-eqz v0, :cond_7c

    .line 1385
    :try_start_6e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_7c

    .line 1387
    :catchall_72
    move-exception p1

    goto :goto_7c

    .line 1381
    :catchall_74
    move-exception p1

    .line 1384
    if-eqz v0, :cond_7c

    .line 1385
    :try_start_77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7c

    .line 1387
    :catchall_7b
    move-exception p1

    :cond_7c
    :goto_7c
    nop

    .line 1388
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1389
    goto :goto_95

    .line 1378
    :catch_87
    move-exception p1

    .line 1380
    :try_start_88
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_96

    .line 1384
    if-eqz v0, :cond_7c

    .line 1385
    :try_start_8f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_7c

    .line 1387
    :catchall_93
    move-exception p1

    goto :goto_7c

    .line 1390
    :goto_95
    return-void

    .line 1383
    :catchall_96
    move-exception p1

    .line 1384
    if-eqz v0, :cond_9e

    .line 1385
    :try_start_99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_9e

    .line 1387
    :catchall_9d
    move-exception p2

    :cond_9e
    :goto_9e
    nop

    .line 1388
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_aa

    :goto_a9
    throw p1

    :goto_aa
    goto :goto_a9
.end method

.method public a(ZZ)V
    .registers 8

    .line 1153
    nop

    .line 1155
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1157
    nop

    .line 1159
    if-eqz p2, :cond_1a

    .line 1160
    if-eqz p1, :cond_5a

    .line 1161
    const-string p1, "delete from __is"

    .line 1162
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5a

    .line 1166
    :cond_1a
    nop

    .line 1167
    nop

    .line 1169
    iget-object p1, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 1170
    const/4 p2, 0x0

    if-lez p1, :cond_53

    .line 1171
    const/4 v1, 0x0

    :goto_26
    if-ge p2, p1, :cond_52

    .line 1172
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1173
    if-nez v2, :cond_33

    .line 1174
    const/4 v1, 0x1

    .line 1176
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __is where __ii=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1171
    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    :cond_52
    move p2, v1

    .line 1183
    :cond_53
    if-eqz p2, :cond_5a

    .line 1184
    const-string p1, "delete from __is where __ii is null"

    .line 1187
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1192
    :cond_5a
    :goto_5a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_5d} :catch_73
    .catchall {:try_start_2 .. :try_end_5d} :catchall_65

    .line 1202
    if-eqz v0, :cond_80

    .line 1203
    :try_start_5f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_80

    .line 1205
    :catchall_63
    move-exception p1

    goto :goto_80

    .line 1196
    :catchall_65
    move-exception p1

    .line 1198
    :try_start_66
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_8c

    .line 1202
    if-eqz v0, :cond_80

    .line 1203
    :try_start_6d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_80

    .line 1205
    :catchall_71
    move-exception p1

    goto :goto_80

    .line 1193
    :catch_73
    move-exception p1

    .line 1195
    :try_start_74
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_8c

    .line 1202
    if-eqz v0, :cond_80

    .line 1203
    :try_start_7b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_80

    .line 1205
    :catchall_7f
    move-exception p1

    :cond_80
    :goto_80
    nop

    .line 1206
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1207
    nop

    .line 1208
    return-void

    .line 1201
    :catchall_8c
    move-exception p1

    .line 1202
    if-eqz v0, :cond_94

    .line 1203
    :try_start_8f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_94

    .line 1205
    :catchall_93
    move-exception p2

    :cond_94
    :goto_94
    nop

    .line 1206
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_a0

    :goto_9f
    throw p1

    :goto_a0
    goto :goto_9f
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 175
    nop

    .line 177
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_c} :catch_70
    .catchall {:try_start_2 .. :try_end_c} :catchall_5d

    .line 178
    :try_start_c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 179
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 180
    const-string v3, "__i"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4c

    .line 183
    const-string p2, "__a"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string p1, "__t"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string p1, "__av"

    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string p1, "__vc"

    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string p1, "__er"

    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 192
    :cond_4c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_c .. :try_end_4f} :catch_5a
    .catchall {:try_start_c .. :try_end_4f} :catchall_57

    .line 199
    if-eqz v1, :cond_65

    .line 200
    :try_start_51
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_65

    .line 202
    :catchall_55
    move-exception p1

    goto :goto_65

    .line 196
    :catchall_57
    move-exception p1

    move-object v0, v1

    goto :goto_5e

    .line 193
    :catch_5a
    move-exception p1

    move-object v0, v1

    goto :goto_71

    .line 196
    :catchall_5d
    move-exception p1

    .line 199
    :goto_5e
    if-eqz v0, :cond_65

    .line 200
    :try_start_60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_65

    .line 202
    :catchall_64
    move-exception p1

    :cond_65
    :goto_65
    nop

    .line 203
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 204
    goto :goto_7e

    .line 193
    :catch_70
    move-exception p1

    .line 195
    :goto_71
    :try_start_71
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_80

    .line 199
    if-eqz v0, :cond_65

    .line 200
    :try_start_78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_65

    .line 202
    :catchall_7c
    move-exception p1

    goto :goto_65

    .line 205
    :goto_7e
    const/4 p1, 0x0

    return p1

    .line 198
    :catchall_80
    move-exception p1

    .line 199
    if-eqz v0, :cond_88

    .line 200
    :try_start_83
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_88

    .line 202
    :catchall_87
    move-exception p2

    :cond_88
    :goto_88
    nop

    .line 203
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_94

    :goto_93
    throw p1

    :goto_94
    goto :goto_93
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z
    .registers 10

    .line 257
    const-string v0, "__e"

    const/4 v1, 0x0

    if-nez p2, :cond_6

    .line 258
    return v1

    .line 260
    :cond_6
    nop

    .line 262
    const/4 v2, 0x0

    :try_start_8
    sget-object v3, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8 .. :try_end_12} :catch_9f
    .catchall {:try_start_8 .. :try_end_12} :catchall_8c

    .line 263
    :try_start_12
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 264
    sget-object v4, Lcom/umeng/analytics/pro/h$a;->c:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v4, :cond_50

    .line 266
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 267
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 268
    const-string v5, "__ii"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string p1, "__av"

    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string p1, "__vc"

    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string p1, "__sd"

    invoke-virtual {v3, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 275
    goto :goto_7b

    :cond_50
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->f:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_58

    .line 277
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/h;->b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_7b

    .line 278
    :cond_58
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->d:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_60

    .line 280
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_7b

    .line 282
    :cond_60
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->b:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_6a

    .line 283
    const-string p3, "__a"

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_7b

    .line 285
    :cond_6a
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->a:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_74

    .line 286
    const-string p3, "__b"

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_7b

    .line 288
    :cond_74
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->e:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_7b

    .line 289
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    :cond_7b
    :goto_7b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_12 .. :try_end_7e} :catch_89
    .catchall {:try_start_12 .. :try_end_7e} :catchall_86

    .line 298
    if-eqz v3, :cond_94

    .line 299
    :try_start_80
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_94

    .line 301
    :catchall_84
    move-exception p1

    goto :goto_94

    .line 295
    :catchall_86
    move-exception p1

    move-object v2, v3

    goto :goto_8d

    .line 292
    :catch_89
    move-exception p1

    move-object v2, v3

    goto :goto_a0

    .line 295
    :catchall_8c
    move-exception p1

    .line 298
    :goto_8d
    if-eqz v2, :cond_94

    .line 299
    :try_start_8f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_94

    .line 301
    :catchall_93
    move-exception p1

    :cond_94
    :goto_94
    nop

    .line 302
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 303
    goto :goto_ad

    .line 292
    :catch_9f
    move-exception p1

    .line 294
    :goto_a0
    :try_start_a0
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_ae

    .line 298
    if-eqz v2, :cond_94

    .line 299
    :try_start_a7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_94

    .line 301
    :catchall_ab
    move-exception p1

    goto :goto_94

    .line 304
    :goto_ad
    return v1

    .line 297
    :catchall_ae
    move-exception p1

    .line 298
    if-eqz v2, :cond_b6

    .line 299
    :try_start_b1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_b6

    .line 301
    :catchall_b5
    move-exception p2

    :cond_b6
    :goto_b6
    nop

    .line 302
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_c2

    :goto_c1
    throw p1

    :goto_c2
    goto :goto_c1
.end method

.method public b(Z)Lorg/json/JSONObject;
    .registers 3

    .line 653
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 654
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->b(Lorg/json/JSONObject;Z)Ljava/lang/String;

    .line 656
    return-object v0
.end method

.method public b()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .line 1398
    nop

    .line 1400
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1401
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __is where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1405
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1407
    :cond_31
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_34} :catch_4f
    .catchall {:try_start_2 .. :try_end_34} :catchall_3c

    .line 1414
    if-eqz v0, :cond_44

    .line 1415
    :try_start_36
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_44

    .line 1417
    :catchall_3a
    move-exception p1

    goto :goto_44

    .line 1411
    :catchall_3c
    move-exception p1

    .line 1414
    if-eqz v0, :cond_44

    .line 1415
    :try_start_3f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_44

    .line 1417
    :catchall_43
    move-exception p1

    :cond_44
    :goto_44
    nop

    .line 1418
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1419
    goto :goto_5d

    .line 1408
    :catch_4f
    move-exception p1

    .line 1410
    :try_start_50
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_5e

    .line 1414
    if-eqz v0, :cond_44

    .line 1415
    :try_start_57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_44

    .line 1417
    :catchall_5b
    move-exception p1

    goto :goto_44

    .line 1420
    :goto_5d
    return-void

    .line 1413
    :catchall_5e
    move-exception p1

    .line 1414
    if-eqz v0, :cond_66

    .line 1415
    :try_start_61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_66

    .line 1417
    :catchall_65
    move-exception v0

    :cond_66
    :goto_66
    nop

    .line 1418
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_72

    :goto_71
    throw p1

    :goto_72
    goto :goto_71
.end method

.method public b(ZZ)V
    .registers 5

    .line 1217
    nop

    .line 1219
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1221
    nop

    .line 1223
    if-eqz p2, :cond_1a

    .line 1224
    if-eqz p1, :cond_52

    .line 1225
    const-string p1, "delete from __sd"

    .line 1226
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_52

    .line 1231
    :cond_1a
    iget-object p1, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_52

    .line 1232
    const/4 p1, 0x0

    :goto_23
    iget-object p2, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_52

    .line 1233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from __sd where __ii=\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    .line 1234
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1235
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1232
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 1241
    :cond_52
    :goto_52
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_55} :catch_70
    .catchall {:try_start_2 .. :try_end_55} :catchall_5d

    .line 1248
    if-eqz v0, :cond_65

    .line 1249
    :try_start_57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_65

    .line 1251
    :catchall_5b
    move-exception p1

    goto :goto_65

    .line 1245
    :catchall_5d
    move-exception p1

    .line 1248
    if-eqz v0, :cond_65

    .line 1249
    :try_start_60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_65

    .line 1251
    :catchall_64
    move-exception p1

    :cond_65
    :goto_65
    nop

    .line 1252
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1253
    goto :goto_7e

    .line 1242
    :catch_70
    move-exception p1

    .line 1244
    :try_start_71
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_7f

    .line 1248
    if-eqz v0, :cond_65

    .line 1249
    :try_start_78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_65

    .line 1251
    :catchall_7c
    move-exception p1

    goto :goto_65

    .line 1254
    :goto_7e
    return-void

    .line 1247
    :catchall_7f
    move-exception p1

    .line 1248
    if-eqz v0, :cond_87

    .line 1249
    :try_start_82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_87

    .line 1251
    :catchall_86
    move-exception p2

    :cond_87
    :goto_87
    nop

    .line 1252
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_93

    :goto_92
    throw p1

    :goto_93
    goto :goto_92
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1495
    nop

    .line 1497
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1498
    goto :goto_1d

    .line 1500
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object p1

    .line 1501
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 1504
    :goto_1d
    goto :goto_20

    .line 1503
    :catch_1e
    move-exception p1

    const/4 p1, 0x0

    .line 1505
    :goto_20
    return-object p1
.end method

.method public c()Z
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1515
    nop

    .line 1517
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1518
    goto :goto_23

    .line 1520
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 1521
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_24

    move-object p1, v1

    .line 1535
    :goto_23
    goto :goto_41

    .line 1523
    :catch_24
    move-exception v0

    .line 1524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_40

    .line 1525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 1527
    :try_start_31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1528
    const-string v0, "MobclickRT"

    const-string v1, "--->>> UMStoreManager decrypt failed, return origin data."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3f

    .line 1529
    nop

    .line 1532
    goto :goto_41

    .line 1530
    :catchall_3f
    move-exception p1

    .line 1536
    :cond_40
    const/4 p1, 0x0

    :goto_41
    return-object p1
.end method

.method public d()V
    .registers 8

    .line 213
    nop

    .line 216
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 219
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/t;->c()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_1b} :catch_95
    .catchall {:try_start_2 .. :try_end_1b} :catchall_82

    if-eqz v2, :cond_2f

    .line 240
    if-eqz v0, :cond_24

    .line 241
    :try_start_1f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_24

    .line 243
    :catchall_23
    move-exception v0

    :cond_24
    :goto_24
    nop

    .line 244
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 222
    return-void

    .line 225
    :cond_2f
    const/4 v2, 0x2

    :try_start_30
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "-1"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 226
    nop

    .line 227
    nop

    :goto_3e
    if-ge v5, v2, :cond_77

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update __et set __i=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" where "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "__i"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 233
    :cond_77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_30 .. :try_end_7a} :catch_95
    .catchall {:try_start_30 .. :try_end_7a} :catchall_82

    .line 240
    if-eqz v0, :cond_8a

    .line 241
    :try_start_7c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_8a

    .line 243
    :catchall_80
    move-exception v0

    goto :goto_8a

    .line 237
    :catchall_82
    move-exception v1

    .line 240
    if-eqz v0, :cond_8a

    .line 241
    :try_start_85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8a

    .line 243
    :catchall_89
    move-exception v0

    :cond_8a
    :goto_8a
    nop

    .line 244
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 245
    goto :goto_a3

    .line 234
    :catch_95
    move-exception v1

    .line 236
    :try_start_96
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_a4

    .line 240
    if-eqz v0, :cond_8a

    .line 241
    :try_start_9d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_8a

    .line 243
    :catchall_a1
    move-exception v0

    goto :goto_8a

    .line 246
    :goto_a3
    return-void

    .line 239
    :catchall_a4
    move-exception v1

    .line 240
    if-eqz v0, :cond_ac

    .line 241
    :try_start_a7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_ac

    .line 243
    :catchall_ab
    move-exception v0

    :cond_ac
    :goto_ac
    nop

    .line 244
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_b8

    :goto_b7
    throw v1

    :goto_b8
    goto :goto_b7
.end method

.method public e()Z
    .registers 2

    .line 556
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .registers 9

    .line 599
    const-string v0, "__vc"

    const-string v1, "__av"

    .line 600
    nop

    .line 601
    nop

    .line 602
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    .line 603
    return-object v3

    .line 606
    :cond_10
    :try_start_10
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_10 .. :try_end_1a} :catch_9e
    .catchall {:try_start_10 .. :try_end_1a} :catchall_83

    .line 607
    :try_start_1a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 608
    iget-object v4, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 609
    const-string v6, "select *  from __is where __ii=?"

    .line 612
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v4, v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1a .. :try_end_31} :catch_80
    .catchall {:try_start_1a .. :try_end_31} :catchall_7d

    .line 613
    if-eqz v4, :cond_5b

    .line 614
    :try_start_33
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 615
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_33 .. :try_end_3e} :catch_79
    .catchall {:try_start_33 .. :try_end_3e} :catchall_75

    .line 616
    :try_start_3e
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 617
    nop

    .line 618
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 619
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3e .. :try_end_55} :catch_59
    .catchall {:try_start_3e .. :try_end_55} :catchall_57

    .line 622
    move-object v3, v5

    goto :goto_5b

    .line 630
    :catchall_57
    move-exception v0

    goto :goto_77

    .line 627
    :catch_59
    move-exception v0

    goto :goto_7b

    .line 625
    :cond_5b
    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5b .. :try_end_5e} :catch_79
    .catchall {:try_start_5b .. :try_end_5e} :catchall_75

    .line 632
    if-eqz v4, :cond_63

    .line 633
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 636
    :cond_63
    if-eqz v2, :cond_6a

    .line 637
    :try_start_65
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6a

    .line 639
    :catchall_69
    move-exception v0

    :cond_6a
    :goto_6a
    nop

    .line 640
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 641
    goto :goto_b3

    .line 630
    :catchall_75
    move-exception v0

    move-object v5, v3

    :goto_77
    move-object v3, v4

    goto :goto_86

    .line 627
    :catch_79
    move-exception v0

    move-object v5, v3

    :goto_7b
    move-object v3, v4

    goto :goto_a1

    .line 630
    :catchall_7d
    move-exception v0

    move-object v5, v3

    goto :goto_86

    .line 627
    :catch_80
    move-exception v0

    move-object v5, v3

    goto :goto_a1

    .line 630
    :catchall_83
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 632
    :goto_86
    if-eqz v3, :cond_8b

    .line 633
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 636
    :cond_8b
    if-eqz v2, :cond_92

    .line 637
    :try_start_8d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_92

    .line 639
    :catchall_91
    move-exception v0

    :cond_92
    :goto_92
    nop

    .line 640
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 641
    move-object v3, v5

    goto :goto_b3

    .line 627
    :catch_9e
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 629
    :goto_a1
    :try_start_a1
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_b4

    .line 632
    if-eqz v3, :cond_ab

    .line 633
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 636
    :cond_ab
    if-eqz v2, :cond_92

    .line 637
    :try_start_ad
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    goto :goto_92

    .line 639
    :catchall_b1
    move-exception v0

    goto :goto_92

    .line 642
    :goto_b3
    return-object v3

    .line 632
    :catchall_b4
    move-exception v0

    if-eqz v3, :cond_ba

    .line 633
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 636
    :cond_ba
    if-eqz v2, :cond_c1

    .line 637
    :try_start_bc
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_c1

    .line 639
    :catchall_c0
    move-exception v1

    :cond_c1
    :goto_c1
    nop

    .line 640
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_cd

    :goto_cc
    throw v0

    :goto_cd
    goto :goto_cc
.end method

.method public g()Lorg/json/JSONObject;
    .registers 9

    .line 859
    const-string v0, "__vc"

    const-string v1, "__av"

    .line 860
    nop

    .line 861
    nop

    .line 862
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    .line 863
    return-object v3

    .line 866
    :cond_10
    :try_start_10
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_10 .. :try_end_1a} :catch_9d
    .catchall {:try_start_10 .. :try_end_1a} :catchall_82

    .line 867
    :try_start_1a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 868
    iget-object v4, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 869
    const-string v6, "select *  from __sd where __ii=?"

    .line 872
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v4, v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1a .. :try_end_31} :catch_7f
    .catchall {:try_start_1a .. :try_end_31} :catchall_7c

    .line 873
    if-eqz v4, :cond_5a

    .line 874
    :try_start_33
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 875
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_33 .. :try_end_3e} :catch_78
    .catchall {:try_start_33 .. :try_end_3e} :catchall_74

    .line 876
    :try_start_3e
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 878
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3e .. :try_end_54} :catch_58
    .catchall {:try_start_3e .. :try_end_54} :catchall_56

    .line 881
    move-object v3, v5

    goto :goto_5a

    .line 889
    :catchall_56
    move-exception v0

    goto :goto_76

    .line 886
    :catch_58
    move-exception v0

    goto :goto_7a

    .line 884
    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5a .. :try_end_5d} :catch_78
    .catchall {:try_start_5a .. :try_end_5d} :catchall_74

    .line 891
    if-eqz v4, :cond_62

    .line 892
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 895
    :cond_62
    if-eqz v2, :cond_69

    .line 896
    :try_start_64
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_69

    .line 898
    :catchall_68
    move-exception v0

    :cond_69
    :goto_69
    nop

    .line 899
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 900
    goto :goto_b2

    .line 889
    :catchall_74
    move-exception v0

    move-object v5, v3

    :goto_76
    move-object v3, v4

    goto :goto_85

    .line 886
    :catch_78
    move-exception v0

    move-object v5, v3

    :goto_7a
    move-object v3, v4

    goto :goto_a0

    .line 889
    :catchall_7c
    move-exception v0

    move-object v5, v3

    goto :goto_85

    .line 886
    :catch_7f
    move-exception v0

    move-object v5, v3

    goto :goto_a0

    .line 889
    :catchall_82
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 891
    :goto_85
    if-eqz v3, :cond_8a

    .line 892
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 895
    :cond_8a
    if-eqz v2, :cond_91

    .line 896
    :try_start_8c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_91

    .line 898
    :catchall_90
    move-exception v0

    :cond_91
    :goto_91
    nop

    .line 899
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 900
    move-object v3, v5

    goto :goto_b2

    .line 886
    :catch_9d
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 888
    :goto_a0
    :try_start_a0
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_b3

    .line 891
    if-eqz v3, :cond_aa

    .line 892
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 895
    :cond_aa
    if-eqz v2, :cond_91

    .line 896
    :try_start_ac
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b0

    goto :goto_91

    .line 898
    :catchall_b0
    move-exception v0

    goto :goto_91

    .line 901
    :goto_b2
    return-object v3

    .line 891
    :catchall_b3
    move-exception v0

    if-eqz v3, :cond_b9

    .line 892
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 895
    :cond_b9
    if-eqz v2, :cond_c0

    .line 896
    :try_start_bb
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    goto :goto_c0

    .line 898
    :catchall_bf
    move-exception v1

    :cond_c0
    :goto_c0
    nop

    .line 899
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_cc

    :goto_cb
    throw v0

    :goto_cc
    goto :goto_cb
.end method

.method public h()V
    .registers 5

    .line 1260
    nop

    .line 1262
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1265
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 1266
    const/4 v1, 0x0

    :goto_18
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from __et where rowid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    .line 1268
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1269
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1266
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1272
    :cond_3f
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1273
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_47} :catch_62
    .catchall {:try_start_2 .. :try_end_47} :catchall_4f

    .line 1280
    if-eqz v0, :cond_57

    .line 1281
    :try_start_49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_57

    .line 1283
    :catchall_4d
    move-exception v0

    goto :goto_57

    .line 1277
    :catchall_4f
    move-exception v1

    .line 1280
    if-eqz v0, :cond_57

    .line 1281
    :try_start_52
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_57

    .line 1283
    :catchall_56
    move-exception v0

    :cond_57
    :goto_57
    nop

    .line 1284
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1285
    goto :goto_70

    .line 1274
    :catch_62
    move-exception v1

    .line 1276
    :try_start_63
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_71

    .line 1280
    if-eqz v0, :cond_57

    .line 1281
    :try_start_6a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_57

    .line 1283
    :catchall_6e
    move-exception v0

    goto :goto_57

    .line 1286
    :goto_70
    return-void

    .line 1279
    :catchall_71
    move-exception v1

    .line 1280
    if-eqz v0, :cond_79

    .line 1281
    :try_start_74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_79

    .line 1283
    :catchall_78
    move-exception v0

    :cond_79
    :goto_79
    nop

    .line 1284
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_85

    :goto_84
    throw v1

    :goto_85
    goto :goto_84
.end method

.method public i()V
    .registers 3

    .line 1292
    nop

    .line 1294
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1296
    const-string v1, "delete from __er"

    .line 1297
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_17} :catch_32
    .catchall {:try_start_2 .. :try_end_17} :catchall_1f

    .line 1305
    if-eqz v0, :cond_27

    .line 1306
    :try_start_19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_27

    .line 1308
    :catchall_1d
    move-exception v0

    goto :goto_27

    .line 1302
    :catchall_1f
    move-exception v1

    .line 1305
    if-eqz v0, :cond_27

    .line 1306
    :try_start_22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_27

    .line 1308
    :catchall_26
    move-exception v0

    :cond_27
    :goto_27
    nop

    .line 1309
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1310
    goto :goto_40

    .line 1299
    :catch_32
    move-exception v1

    .line 1301
    :try_start_33
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_41

    .line 1305
    if-eqz v0, :cond_27

    .line 1306
    :try_start_3a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_27

    .line 1308
    :catchall_3e
    move-exception v0

    goto :goto_27

    .line 1311
    :goto_40
    return-void

    .line 1304
    :catchall_41
    move-exception v1

    .line 1305
    if-eqz v0, :cond_49

    .line 1306
    :try_start_44
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_49

    .line 1308
    :catchall_48
    move-exception v0

    :cond_49
    :goto_49
    nop

    .line 1309
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_55

    :goto_54
    throw v1

    :goto_55
    goto :goto_54
.end method

.method public j()V
    .registers 6

    .line 1317
    const-string v0, "\""

    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_96

    .line 1318
    nop

    .line 1320
    :try_start_c
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_c .. :try_end_16} :catch_74
    .catchall {:try_start_c .. :try_end_16} :catchall_60

    .line 1321
    :try_start_16
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __er where __i=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1324
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __et where __i=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_16 .. :try_end_54} :catch_5e
    .catchall {:try_start_16 .. :try_end_54} :catchall_5c

    .line 1336
    if-eqz v1, :cond_69

    .line 1337
    :try_start_56
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_69

    .line 1339
    :catchall_5a
    move-exception v0

    goto :goto_69

    .line 1333
    :catchall_5c
    move-exception v0

    goto :goto_62

    .line 1330
    :catch_5e
    move-exception v0

    goto :goto_76

    .line 1333
    :catchall_60
    move-exception v0

    move-object v1, v2

    .line 1336
    :goto_62
    if-eqz v1, :cond_69

    .line 1337
    :try_start_64
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_69

    .line 1339
    :catchall_68
    move-exception v0

    :cond_69
    :goto_69
    nop

    .line 1340
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    .line 1341
    goto :goto_96

    .line 1330
    :catch_74
    move-exception v0

    move-object v1, v2

    .line 1332
    :goto_76
    :try_start_76
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_83

    .line 1336
    if-eqz v1, :cond_69

    .line 1337
    :try_start_7d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_69

    .line 1339
    :catchall_81
    move-exception v0

    goto :goto_69

    .line 1335
    :catchall_83
    move-exception v0

    .line 1336
    if-eqz v1, :cond_8b

    .line 1337
    :try_start_86
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8b

    .line 1339
    :catchall_8a
    move-exception v1

    :cond_8b
    :goto_8b
    nop

    .line 1340
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->b()V

    throw v0

    .line 1343
    :cond_96
    :goto_96
    iput-object v2, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    .line 1344
    return-void
.end method
