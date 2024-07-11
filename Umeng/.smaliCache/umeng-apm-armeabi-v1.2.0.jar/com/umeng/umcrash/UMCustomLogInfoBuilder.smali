.class public Lcom/umeng/umcrash/UMCustomLogInfoBuilder;
.super Ljava/lang/Object;
.source "UMCustomLogInfoBuilder.java"


# static fields
.field public static final LINE_SEP:Ljava/lang/String; = "\n"

.field public static final LOG_KEY_AC:Ljava/lang/String; = "k_ac"

.field public static final LOG_KEY_CT:Ljava/lang/String; = "k_ct"

.field private static final LOG_KEY_STACK_FUNC:Ljava/lang/String; = "stackFunc"

.field private static final LOG_KEY_STACK_HASH:Ljava/lang/String; = "stackHash"

.field private static final LOG_SECTION_SEP:Ljava/lang/String; = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"

.field public static final LOG_TYPE:Ljava/lang/String; = "exception"


# instance fields
.field private kvInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomLogInfo:Lcom/uc/crashsdk/export/CustomLogInfo;

.field private sectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stack:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "subLogType"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->kvInfoMap:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->sectionList:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/uc/crashsdk/export/CustomLogInfo;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "exception"

    invoke-direct {v0, v1, v2}, Lcom/uc/crashsdk/export/CustomLogInfo;-><init>(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->mCustomLogInfo:Lcom/uc/crashsdk/export/CustomLogInfo;

    .line 80
    iget-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->kvInfoMap:Ljava/util/Map;

    const-string v1, "k_ct"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->kvInfoMap:Ljava/util/Map;

    const-string v1, "k_ac"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method


# virtual methods
.method public addLogCat(Z)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;
    .registers 3
    .param p1, "addLogcat"    # Z

    .line 154
    iget-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->mCustomLogInfo:Lcom/uc/crashsdk/export/CustomLogInfo;

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    .line 155
    return-object p0
.end method

.method public addSection(Ljava/lang/String;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;
    .registers 3
    .param p1, "section"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->sectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-object p0
.end method

.method public build()Lcom/uc/crashsdk/export/CustomLogInfo;
    .registers 7

    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->kvInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 166
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_f

    .line 169
    :cond_3b
    iget-object v1, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->stack:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 171
    iget-object v1, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->stack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_4c
    iget-object v1, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->sectionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    .local v2, "sectionText":Ljava/lang/String;
    const-string v4, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    .end local v2    # "sectionText":Ljava/lang/String;
    goto :goto_52

    .line 179
    :cond_6f
    iget-object v1, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->mCustomLogInfo:Lcom/uc/crashsdk/export/CustomLogInfo;

    iput-object v0, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    .line 180
    iget-object v1, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->mCustomLogInfo:Lcom/uc/crashsdk/export/CustomLogInfo;

    return-object v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 88
    const-string v0, "k_ac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "k_ct"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 92
    :cond_11
    iget-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->kvInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object p0

    .line 89
    :cond_17
    :goto_17
    const-string v0, "crashsdk"

    const-string v1, "key can not be \'k_ac\' and \'k_ct\'"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-object p0
.end method

.method public stack(Ljava/lang/String;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;
    .registers 4
    .param p1, "stackStr"    # Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception message:\nBack traces starts.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Back traces ends."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->stack:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public stack(Ljava/lang/Throwable;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 120
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->stack(Ljava/lang/String;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;

    move-result-object v0

    return-object v0
.end method

.method public stackFunc(Ljava/lang/String;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;
    .registers 4
    .param p1, "stackFunc"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->kvInfoMap:Ljava/util/Map;

    const-string v1, "stackFunc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-object p0
.end method

.method public stackHash(Ljava/lang/String;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;
    .registers 4
    .param p1, "stackHash"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->kvInfoMap:Ljava/util/Map;

    const-string v1, "stackHash"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-object p0
.end method

.method public uploadNow(Z)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;
    .registers 3
    .param p1, "uploadNow"    # Z

    .line 146
    iget-object v0, p0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->mCustomLogInfo:Lcom/uc/crashsdk/export/CustomLogInfo;

    iput-boolean p1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    .line 147
    return-object p0
.end method
