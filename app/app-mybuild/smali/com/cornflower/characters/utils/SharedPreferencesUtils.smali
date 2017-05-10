.class public Lcom/cornflower/characters/utils/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# instance fields
.field context:Landroid/content/Context;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->name:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "sp"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, "t":Ljava/lang/Object;, "TT;"
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 195
    const/4 v2, 0x0

    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 213
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v2

    .line 196
    .restart local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 197
    const-string v2, ""

    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 198
    :cond_1
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 199
    const/4 v2, 0x0

    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 200
    :cond_2
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 201
    const-wide/16 v2, 0x0

    invoke-interface {p3, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 202
    :cond_3
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 203
    const/4 v2, 0x0

    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 205
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 213
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_4
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 105
    iget-object v8, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 106
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v6, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 107
    invoke-interface {v6, p1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "objectVal":Ljava/lang/String;
    invoke-static {v3, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 109
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 110
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 112
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 123
    .local v7, "t":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 124
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 126
    :cond_0
    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "objectVal":Ljava/lang/String;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    return-object v7

    .line 129
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "objectVal":Ljava/lang/String;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v7    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e":Ljava/io/StreamCorruptedException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 126
    :cond_2
    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 129
    :catch_2
    move-exception v2

    .line 130
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 118
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 126
    :cond_3
    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 129
    :catch_4
    move-exception v2

    .line 130
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 126
    :cond_4
    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 129
    :catch_6
    move-exception v2

    .line 130
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 123
    :goto_4
    if-eqz v0, :cond_5

    .line 124
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 126
    :cond_5
    if-eqz v4, :cond_6

    .line 127
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 131
    :cond_6
    :goto_5
    throw v8

    .line 129
    :catch_7
    move-exception v2

    .line 130
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 122
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 119
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 117
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 115
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public getObjectAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->name:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 141
    .local v12, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 142
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v7, "lt":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 144
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 146
    .local v6, "key":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-interface {v12, v6, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "objectVal":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 148
    const/4 v14, 0x0

    invoke-static {v9, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 149
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 150
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v10, 0x0

    .line 152
    .local v10, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v11, Ljava/io/ObjectInputStream;

    invoke-direct {v11, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v10    # "ois":Ljava/io/ObjectInputStream;
    .local v11, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v13

    .line 154
    .local v13, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    if-eqz v1, :cond_1

    .line 164
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 166
    :cond_1
    if-eqz v11, :cond_0

    .line 167
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v3

    .line 170
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v3    # "e":Ljava/io/IOException;
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .end local v13    # "t":Ljava/lang/Object;, "TT;"
    .restart local v10    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v3

    .line 156
    .local v3, "e":Ljava/io/StreamCorruptedException;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    if-eqz v1, :cond_2

    .line 164
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 166
    :cond_2
    if-eqz v10, :cond_0

    .line 167
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 169
    :catch_2
    move-exception v3

    .line 170
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 158
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    if-eqz v1, :cond_3

    .line 164
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 166
    :cond_3
    if-eqz v10, :cond_0

    .line 167
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 169
    :catch_4
    move-exception v3

    .line 170
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 160
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    if-eqz v1, :cond_4

    .line 164
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 166
    :cond_4
    if-eqz v10, :cond_0

    .line 167
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 169
    :catch_6
    move-exception v3

    .line 170
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 163
    :goto_4
    if-eqz v1, :cond_5

    .line 164
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 166
    :cond_5
    if-eqz v10, :cond_6

    .line 167
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 171
    :cond_6
    :goto_5
    throw v14

    .line 169
    :catch_7
    move-exception v3

    .line 170
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 176
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v9    # "objectVal":Ljava/lang/String;
    .end local v10    # "ois":Ljava/io/ObjectInputStream;
    :cond_7
    return-object v7

    .line 162
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v9    # "objectVal":Ljava/lang/String;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v10    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 159
    .end local v10    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v3

    move-object v10, v11

    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v10    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 157
    .end local v10    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v3

    move-object v10, v11

    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v10    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 155
    .end local v10    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v3

    move-object v10, v11

    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v10    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u8bf7\u5148\u8c03\u7528\u5e26\u6709context\uff0cname\u53c2\u6570\u7684\u6784\u9020\uff01"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-direct {p0, p1, p2, v0}, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->getValue(Ljava/lang/String;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 90
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method public removeAll()V
    .locals 5

    .prologue
    .line 97
    iget-object v2, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 98
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 51
    iget-object v8, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 53
    .local v6, "sp":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 57
    .local v4, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .local v5, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 60
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 61
    .local v3, "objectVal":Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 62
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    const/4 v7, 0x1

    .line 71
    if-eqz v0, :cond_0

    .line 72
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 74
    :cond_0
    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v4, v5

    .line 79
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "objectVal":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/ObjectOutputStream;
    :cond_2
    :goto_1
    return v7

    .line 77
    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "objectVal":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "objectVal":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v1

    .line 67
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 74
    :cond_3
    if-eqz v4, :cond_2

    .line 75
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 77
    :catch_2
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 71
    :goto_3
    if-eqz v0, :cond_4

    .line 72
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 74
    :cond_4
    if-eqz v4, :cond_5

    .line 75
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 79
    :cond_5
    :goto_4
    throw v7

    .line 77
    :catch_3
    move-exception v1

    .line 78
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 70
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v5    # "out":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 66
    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v5    # "out":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method
