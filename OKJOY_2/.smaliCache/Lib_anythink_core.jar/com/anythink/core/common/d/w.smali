.class public final Lcom/anythink/core/common/d/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field A:[Ljava/lang/String;

.field B:[Ljava/lang/String;

.field C:[Ljava/lang/String;

.field D:[Ljava/lang/String;

.field E:[Ljava/lang/String;

.field F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/lang/String;

.field L:Ljava/lang/String;

.field M:Ljava/lang/String;

.field N:Ljava/lang/String;

.field O:Ljava/lang/String;

.field P:Ljava/lang/String;

.field Q:Ljava/lang/String;

.field R:Ljava/lang/String;

.field S:Ljava/lang/String;

.field T:Ljava/lang/String;

.field U:Ljava/lang/String;

.field V:Ljava/lang/String;

.field W:Ljava/lang/String;

.field X:Ljava/lang/String;

.field Y:Ljava/lang/String;

.field Z:Ljava/lang/String;

.field a:Ljava/lang/String;

.field aa:Ljava/lang/String;

.field ab:Ljava/lang/String;

.field ac:Ljava/lang/String;

.field ad:Ljava/lang/String;

.field ae:Ljava/lang/String;

.field af:Ljava/lang/String;

.field ag:Ljava/lang/String;

.field ah:Ljava/lang/String;

.field ai:Ljava/lang/String;

.field aj:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:[Ljava/lang/String;

.field e:[Ljava/lang/String;

.field f:[Ljava/lang/String;

.field g:[Ljava/lang/String;

.field h:[Ljava/lang/String;

.field i:[Ljava/lang/String;

.field j:[Ljava/lang/String;

.field k:[Ljava/lang/String;

.field l:[Ljava/lang/String;

.field m:[Ljava/lang/String;

.field n:[Ljava/lang/String;

.field o:[Ljava/lang/String;

.field p:[Ljava/lang/String;

.field q:[Ljava/lang/String;

.field r:[Ljava/lang/String;

.field s:[Ljava/lang/String;

.field t:[Ljava/lang/String;

.field u:[Ljava/lang/String;

.field v:[Ljava/lang/String;

.field w:[Ljava/lang/String;

.field x:[Ljava/lang/String;

.field y:[Ljava/lang/String;

.field z:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/anythink/core/common/d/w;
    .registers 7

    .line 103
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    new-instance p0, Lcom/anythink/core/common/d/w;

    invoke-direct {p0}, Lcom/anythink/core/common/d/w;-><init>()V

    .line 105
    const-string v1, "ks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->a:Ljava/lang/String;

    .line 106
    const-string v1, "nurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->b:[Ljava/lang/String;

    .line 107
    const-string v1, "imp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->c:[Ljava/lang/String;

    .line 108
    const-string v1, "click"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->d:[Ljava/lang/String;

    .line 109
    const-string v1, "vstart"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->e:[Ljava/lang/String;

    .line 110
    const-string v1, "v25"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->f:[Ljava/lang/String;

    .line 111
    const-string v1, "v50"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->g:[Ljava/lang/String;

    .line 112
    const-string v1, "v75"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->h:[Ljava/lang/String;

    .line 113
    const-string v1, "v100"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->i:[Ljava/lang/String;

    .line 114
    const-string v1, "vpaused"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->j:[Ljava/lang/String;

    .line 115
    const-string v1, "vclick"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->k:[Ljava/lang/String;

    .line 116
    const-string v1, "vmute"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->l:[Ljava/lang/String;

    .line 117
    const-string v1, "vunmute"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->m:[Ljava/lang/String;

    .line 118
    const-string v1, "ec_show"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->n:[Ljava/lang/String;

    .line 119
    const-string v1, "ec_close"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->o:[Ljava/lang/String;

    .line 120
    const-string v1, "apk_dl_star"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->p:[Ljava/lang/String;

    .line 121
    const-string v1, "apk_dl_end"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->q:[Ljava/lang/String;

    .line 122
    const-string v1, "apk_install"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->r:[Ljava/lang/String;

    .line 127
    const-string v1, "vresumed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->s:[Ljava/lang/String;

    .line 128
    const-string v1, "vskip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->t:[Ljava/lang/String;

    .line 129
    const-string v1, "vfail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->u:[Ljava/lang/String;

    .line 130
    const-string v1, "apk_start_install"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->v:[Ljava/lang/String;

    .line 131
    const-string v1, "dp_start"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->w:[Ljava/lang/String;

    .line 132
    const-string v1, "dp_succ"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->x:[Ljava/lang/String;

    .line 133
    const-string v1, "app_install"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->y:[Ljava/lang/String;

    .line 134
    const-string v1, "app_uninstall"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->z:[Ljava/lang/String;

    .line 135
    const-string v1, "app_unknow"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->A:[Ljava/lang/String;

    .line 140
    const-string v1, "dp_inst_fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->C:[Ljava/lang/String;

    .line 141
    const-string v1, "dp_uninst_fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->B:[Ljava/lang/String;

    .line 142
    const-string v1, "vd_succ"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->D:[Ljava/lang/String;

    .line 143
    const-string v1, "vrewarded"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->E:[Ljava/lang/String;

    .line 144
    const-string v1, "v_p_tracking"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_1b0

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/anythink/core/common/d/w;->F:Ljava/util/Map;

    .line 147
    const/4 v2, 0x0

    :goto_18a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1b0

    .line 148
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 149
    const-string v4, "play_sec"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 150
    const-string v5, "list"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 151
    invoke-static {v3}, Lcom/anythink/core/common/g/h;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    .line 152
    iget-object v5, p0, Lcom/anythink/core/common/d/w;->F:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_18a

    .line 156
    :cond_1b0
    const-string v1, "tp_nurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->G:Ljava/lang/String;

    .line 157
    const-string v1, "tp_imp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->H:Ljava/lang/String;

    .line 158
    const-string v1, "tp_click"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->I:Ljava/lang/String;

    .line 159
    const-string v1, "tp_vstart"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->J:Ljava/lang/String;

    .line 160
    const-string v1, "tp_v25"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->K:Ljava/lang/String;

    .line 161
    const-string v1, "tp_v50"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->L:Ljava/lang/String;

    .line 162
    const-string v1, "tp_v75"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->M:Ljava/lang/String;

    .line 163
    const-string v1, "tp_v100"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->N:Ljava/lang/String;

    .line 164
    const-string v1, "tp_vpaused"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->O:Ljava/lang/String;

    .line 165
    const-string v1, "tp_vclick"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->P:Ljava/lang/String;

    .line 166
    const-string v1, "tp_vmute"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->Q:Ljava/lang/String;

    .line 167
    const-string v1, "tp_vunmute"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->R:Ljava/lang/String;

    .line 168
    const-string v1, "tp_ec_show"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->S:Ljava/lang/String;

    .line 169
    const-string v1, "tp_ec_close"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->T:Ljava/lang/String;

    .line 170
    const-string v1, "tp_apk_dl_star"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->U:Ljava/lang/String;

    .line 171
    const-string v1, "tp_apk_dl_end"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->V:Ljava/lang/String;

    .line 172
    const-string v1, "tp_apk_install"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->W:Ljava/lang/String;

    .line 177
    const-string v1, "tp_vresumed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->X:Ljava/lang/String;

    .line 178
    const-string v1, "tp_vskip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->Y:Ljava/lang/String;

    .line 179
    const-string v1, "tp_vfail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->Z:Ljava/lang/String;

    .line 180
    const-string v1, "tp_apk_start_install"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->aa:Ljava/lang/String;

    .line 181
    const-string v1, "tp_dp_start"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->ab:Ljava/lang/String;

    .line 182
    const-string v1, "tp_dp_succ"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->ac:Ljava/lang/String;

    .line 183
    const-string v1, "tp_app_install"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->ad:Ljava/lang/String;

    .line 184
    const-string v1, "tp_app_uninstall"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->ae:Ljava/lang/String;

    .line 185
    const-string v1, "tp_app_unknow"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->af:Ljava/lang/String;

    .line 190
    const-string v1, "tp_dp_inst_fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->ah:Ljava/lang/String;

    .line 191
    const-string v1, "tp_dp_uninst_fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->ag:Ljava/lang/String;

    .line 192
    const-string v1, "tp_vd_succ"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/w;->ai:Ljava/lang/String;

    .line 193
    const-string v1, "tp_vrewarded"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/d/w;->aj:Ljava/lang/String;
    :try_end_2a0
    .catchall {:try_start_0 .. :try_end_2a0} :catchall_2a1

    .line 195
    return-object p0

    .line 197
    :catchall_2a1
    move-exception p0

    .line 200
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->K:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->O:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->R:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->S:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->U:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->V:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final O()[Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->s:[Ljava/lang/String;

    return-object v0
.end method

.method public final P()[Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->t:[Ljava/lang/String;

    return-object v0
.end method

.method public final Q()[Ljava/lang/String;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->u:[Ljava/lang/String;

    return-object v0
.end method

.method public final R()[Ljava/lang/String;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->v:[Ljava/lang/String;

    return-object v0
.end method

.method public final S()[Ljava/lang/String;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->w:[Ljava/lang/String;

    return-object v0
.end method

.method public final T()[Ljava/lang/String;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->x:[Ljava/lang/String;

    return-object v0
.end method

.method public final U()[Ljava/lang/String;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->y:[Ljava/lang/String;

    return-object v0
.end method

.method public final V()[Ljava/lang/String;
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->z:[Ljava/lang/String;

    return-object v0
.end method

.method public final W()[Ljava/lang/String;
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->A:[Ljava/lang/String;

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->X:Ljava/lang/String;

    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final aa()Ljava/lang/String;
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public final ab()Ljava/lang/String;
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public final ac()Ljava/lang/String;
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public final ad()Ljava/lang/String;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public final ae()Ljava/lang/String;
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public final af()Ljava/lang/String;
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->af:Ljava/lang/String;

    return-object v0
.end method

.method public final ag()Ljava/lang/String;
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->ag:Ljava/lang/String;

    return-object v0
.end method

.method public final ah()Ljava/lang/String;
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->ah:Ljava/lang/String;

    return-object v0
.end method

.method public final ai()Ljava/lang/String;
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public final aj()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public final c()[Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final d()[Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public final e()[Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public final f()[Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public final g()[Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public final h()[Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public final i()[Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public final j()[Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public final k()[Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public final l()[Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public final m()[Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public final n()[Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->n:[Ljava/lang/String;

    return-object v0
.end method

.method public final o()[Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->o:[Ljava/lang/String;

    return-object v0
.end method

.method public final p()[Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->p:[Ljava/lang/String;

    return-object v0
.end method

.method public final q()[Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->q:[Ljava/lang/String;

    return-object v0
.end method

.method public final r()[Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->r:[Ljava/lang/String;

    return-object v0
.end method

.method public final s()[Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->B:[Ljava/lang/String;

    return-object v0
.end method

.method public final t()[Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->C:[Ljava/lang/String;

    return-object v0
.end method

.method public final u()[Ljava/lang/String;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->D:[Ljava/lang/String;

    return-object v0
.end method

.method public final v()[Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->E:[Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->F:Ljava/util/Map;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/anythink/core/common/d/w;->I:Ljava/lang/String;

    return-object v0
.end method
